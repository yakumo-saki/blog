---
title:  "2020/12/03 Daily Release Note"
date:   2020-12-03 09:01:23 +0900
categories:
    - releasenote
---
# 起きたこと

* さむーい！

## ベランダ使用不可

まだ乾燥中 again。雨かわからないけれどもベランダが濡れてしまっているので
1日延長、本当なら今日取り込んでいいはずなんだけれども明日にする。

## lambrollのaurパッケージ

ついに意を決してsubmitというかpushした。twitterでつぶやいたら、作者さんがいいねしてくれたので
とりあえず、おうおう、何勝手にパッケージ作っとんじゃいという怒られは発生しなかった。よかった。
（AURのパッケージはソースもバイナリも一切含まなくて、インストール手順とかパッチだけが入ってるので
　怒られは発生しないのだけれども、overgrive https://aur.archlinux.org/packages/overgrive/ みたいな
　意味のわからないクレームは発生しているので）

https://aur.archlinux.org/packages/lambroll-bin/ 初aurパッケージ


## kubernetes with cri-o

kubernetesでdockerが非推奨になる（といってもサポートから外れるのは2021年末だし、まだ慌てる必要はない）
ので、cri-oで試してみることにした。

```
│   Warning  FailedCreatePodSandBox  3m59s (x69 over 19m)   kubelet, kubeworker4  Failed to create pod sandbox: rpc error: code = Unknown desc = container create failed: containe  
│ r_linux.go:344: starting container process caused "error adding seccomp filter rule for syscall _llseek: requested action matches default action of filter"   
```

cri-o のdebian / ubuntu 向けリポジトリには cri-oが1.17までしかない。
cri-oのバージョンとk8sのバージョンは一致しないといけないので、k8s 1.19にはcri-o 1.19が必要。
ということでcri-oは諦めた。 CentOSとかFedoraを使えばいいという話なのだが、CentOSのパッケージのふるさはつらい。
…ワーカーノードなのでそこは気にしなくて良い気もするが。

## kubernetes with containerd

公式の手順＋α
https://docs.docker.com/engine/install/debian/#install-using-the-repository
https://github.com/kata-containers/documentation/blob/master/how-to/how-to-use-k8s-with-cri-containerd-and-kata.md#install-kubernetes

dockerからの切り替え、もしかしたらkubeletのオプション変更だけでいけるんじゃないか…
念の為 kubectl delete node してから kubeadm join で再joinした方がいいだろうけども
まぁ、このあたりの手順はおそらくこれから出てくるだろうし、様子見でいいと思った。

## kubeadm join

masterで `kubeadm token create --print-join-command` するとワーカーノードで実行すべきコマンドを表示してくれる。

## リングフィット

* なし

# TODO 

- [x] 衣替え
- [X] IX2215手配 -> 落札！
- [x] 秋葉原にお買い物
- [x] IX2215設定
- [x] IX2215に入れ替え
- [x] IX2215のsyslogをelasticsearchに入れる
- [x] EnvBoyのESP32のやつを焼き直して本番に戻す
- [ ] ESP32のBluetooth回りを触ってみる
- [x] EnvBoyにmDNS機能を追加する
- [ ] chinachuをk8sに乗せる
- [x] サーバーのファン交換
- [ ] lambrollのAURパッケージを作る