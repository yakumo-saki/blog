---
type: post
title:  "2022/06/12 Epgstation"
date:   2022-06-12 00:00:00 +0900
tags:
  - releasenote
---

## tl;dr

* proxmox前提
* lxc-unprivilegedコンテナでOK
* 内部的には、mirakurun+epgstationのdockerコンテナで立てるのが一番楽。

### やること1

* 以下の lxc.* の設定を追記する必要がある。(これはproxmoxの設定ファイルなので純粋なlxcの場合は多分そのまま使えない)
* 場所は /etc/pve/lxc/CTID.cfg (CTID=コンテナID。 100とか101とか数字のやつ。)

```
features: fuse=1,mknod=1,mount=nfs;cifs,nesting=1

lxc.cgroup.devices.allow: c 212:* rwm
lxc.cgroup.devices.allow: c 189:* rwm
lxc.mount.entry: /dev/dvb dev/dvb  none bind,optional,create=dir
lxc.mount.entry: /dev/bus/usb dev/bus/usb none bind,optional,create=dir
```

### やること2 dockerのfsドライバを変更

* これはLXCコンテナ内の話
* dockerを入れたら、overlayfsが使えないというエラーが出るはずなので、`apt install fuse-overlayfs` する。
* /etc/docker/daemon.json に以下を追記

```
{
    "storage-driver": "fuse-overlayfs"
}
```

* これはやらなくても動くっぽい。
* あとからやると、dockerのキャッシュ類がすべて見えなくなるので、 `docker system prune` を実行する必要がある。

### やること3 udev

* これはproxmoxホストでやること
* 必要なPCカードリーダー、チューナーデバイスはLXCコンテナ内では権限がないので使えない。
* PCカードリーダーは /dev/bus/usb 以下のどこかにデバイスファイルがある。
* チューナーは /dev/dvb/adapterN だったり /dev/pt3video だったり。
* 何はともあれ、デバイスファイルの権限はudevが決定している。
* ということで、udevのルールを追加して、PCカードリーダーとチューナーは誰でも使ってOKということにする。
* cat /etc/udev/rules.d/99-smartcard.rules 

```
# smartcard reader
# Gemalt
SUBSYSTEM=="usb", ATTRS{idVendor}=="08e6", ATTRS{idProduct}=="3437", GROUP="video", MODE="0666" 
# NTT SCR3310
SUBSYSTEM=="usb", ATTRS{idVendor}=="04e6", ATTRS{idProduct}=="511a", GROUP="video", MODE="0666" 

# MyGica S270 (siano chip)
SUBSYSTEM=="dvb", ATTRS{idVendor}=="187f", ATTRS{idProduct}=="0600", GROUP="video", MODE="0666" 
```

* idVendor, idProductはlsusbで調べられる。 GROUP=videoは特に意味がない。videoグループに属するユーザーのみ使えるようにしたかったができなかった。
* グループを変えておくと、udevルールが反映されたかどうか判別しやすいので変えたままにしている。
* 結局、unprivilegedなLXCコンテナはホストからみたときnobodyでしかないのでここまで権限を緩くしないと使えない。
* （もちろん、さらにlxcで制限を食らうわけだ。←やること1で解決済み）

```
root@proxmox:~# ls -l /dev/dvb/
total 0
drwxr-xr-x 2 root root 100 Jun 12 01:38 adapter0
drwxr-xr-x 2 root root 100 Jun 12 01:38 adapter1
root@proxmox:~# ls -l /dev/dvb/adapter0/
total 0
crw-rw-rw- 1 root video 212, 0 Jun 12 01:38 demux0
crw-rw-rw- 1 root video 212, 1 Jun 12 01:38 dvr0
crw-rw-rw- 1 root video 212, 2 Jun 12 01:38 frontend0
```

### やったこと4: docker-compose.yml

* mirakurunは内部で nice コマンドを呼ぶ。そのため権限が必要…
* unprivilegedなlxcコンテナ内で renice, ionice コマンドは使えない。
* なのでdocker-compose.yml内で、同コマンドを上書きして何もしないようにしている。(nop.sh は中身が空で実行権限がついている。)

```
        volumes:
            - ./mirakurun/conf:/app-config
            - ./mirakurun/data:/app-data
            - ./mirakurun/dvbv5_channels_isdbt.conf:/dvbv5_channels_isdbt.conf:ro
            - ./mirakurun/dvbv5_channels_isdbs.conf:/dvbv5_channels_isdbs.conf:ro
            - ./mirakurun/nop.sh:/usr/bin/renice:ro
            - ./mirakurun/nop.sh:/usr/bin/ionice:ro
```

* 外部コマンド呼び出ししてくれてて良かった…

## まとめ

* なんだかんだで一度動いてしまえばちゃんと動きます。

## 蛇足

mirakcのTSDサーバーについて。という項目にある socatを使って pcscサーバーとb25サーバーのコンテナを分けるというの
美しいなと思ったんだけど動かない。不思議なことに動かない。
で、結局mirakurunコンテナにチューナーもpcカードリーダーも見せちゃったらあっけなく解決した。
うーん。ちょっと不満はあるけれども仕方ない。