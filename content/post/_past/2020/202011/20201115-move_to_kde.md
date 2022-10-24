---
type: post
title:  "GnomeからKDEに移行した"
date:   2020-11-15 09:01:23 +0900
tags:
  - 日記
  - Linux
---

# 移行について

## きっかけ

Globalmenu（画面上部にメニューバーが出るやつ）がどうしても使いたかった。
Gnomeがなんか微妙というか、デザイン的にすごく微妙な感じがしてきた。例えば

* 標準だと時計が真ん中にあって意味がわからない（拡張で変更可能）
* 左側にあるActivityが使いにくい（拡張で変更可能）
* トップバーという一等地にあるのに無駄に隙間ばっかり

だけれども、一番の不満はGlobalMenuが使えないことだった。
追記：GnomeでもGlobalMenu自体は使える模様。ただし、Gnome自体はメニューバーを使わないUIが推奨っぽい。
標準のアプリケーションはすべてハンバーガーメニューになっている。

## 移行

もともとはUbuntuを使っていたが、KDEは気になっていて、KDE neonを試してはいた。
ただ、HiDPIにしたときGUIからモニタごとの拡大率が設定できない問題があって毎度挫折していた。

## ディストリ選定

.debか.rpmを扱えないディストリだと後々面倒（アプリがない）になるのがやだなぁというのがあり、Kubuntuにしようかと一瞬思ったが、
KDEは現在進行系でHiDPI周りの修正が入っているというのと、Waylandへの移行も進行中ということで、KDEの最新に追従したい。
とすると、KubuntuよりはKDE neon？ Fedora KDEスピン？
…よく考えたらArchにすればすべて解決では？大体のソフトウェアはリポジトリ化AURにあるだろうし。ということでArchにした。

## HiDPI問題

方向性として、対応は3パターンある。

1. Wayland
2. Plasmaに拡大をさせる
3. Plasmaに拡大をさせない

結論は3にしたんだけれども、不採用の方から書いていくと

WaylandでKDEを使うと、今の所安定性があまりよくないのでなし（突然フリーズしてログイン画面に戻ったり、固まったりする）

Plasmaに拡大をするのは `PLASMA_USE_QT_SCALING=1` を
`/etc/xdg/autostart/org.kde.plasmashell.desktop` のplasmashellを指定しているところにつければ良い。
https://phabricator.kde.org/T8177
が。これをやると画面上部にパネルをおいた場合に、ウィンドウを最大化するとパネルの下に潜り込んだり、パネルに配置したウィジェットの位置が変になったり…
さすがデフォルトで無効にしているだけあって変な動きが多発する。

## 最終的にやったのは…

* グローバルスケール200%
* `xrandr` でスケーリングを指定
* フォントDPIを192dpi（フォントDPIを変更するとグローバルスケールを使え。って表示されるけれども、グローバルスケールだけだと文字が小さい）
* `~/.xprofile` に `export GDK_DPI_SCALE=2` を指定
* フォントサイズの指定は少し調整
* `~/.config/chromium.conf` に `--force-device-scale-factor=2` を指定している

## インストールしたもの

* Latte Dock

## 解決できた問題

問題：chromiumを開くと KDE Wallet がパスワードを要求してくるが、何を入れても通らない

解決策：KWallet Managerから標準で作られている `kdewallet` を使って適当なウォレットを作って、一度 `kdewallet` を削除する。
その後もう一度 `kdewallet` を作る。暗号方式はbrowfishを選択する。（作成するときにパスワードを聞かれるのでユーザーアカウントのパスワードと一致させる）
ウォレットの名前を `kdewallet` にしておくのはなんか標準の名前じゃないとだめなパターンがあるみたいなので合わせておいている。

問題：vscodeからssh鍵を使ってgithubにpushできない（git: sshaskpass exec... というエラーがでる。ターミナルから `git push` はできる）

解決策：

以下の内容のファイルを `~/.config/plasma-workspace/env/ssh-agent.sh` に作成して
`chmod +x ~/.config/plasma-workspace/env/ssh-agent.sh` した上で再起動する。

```
#! /bin/bash
export SSH_ASKPASS=/usr/bin/ksshaskpass
/usr/bin/ssh-add
```

## 既知の問題

* なんかGlobalmenuのフォントが怪しいような…

## その他

OverGriveの作者がaurのページであちゃーな書き込みしててげんなり。
OverGriveのページでもaur使うなって書いててなんだかなぁ…
$5で安いのは良かったんだけど、さすがにこの姿勢は許容できないのでInsyncを検討する羽目になった。
https://aur.archlinux.org/packages/overgrive/

# TODO 

- [x] 衣替え
- [ ] IX2215手配
- [ ] InSync評価