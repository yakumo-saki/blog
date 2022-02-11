---
title:  "2020/12/02 Daily Release Note"
date:   2020-12-02 09:01:23 +0900
categories:
	- releasenote
---
# 起きたこと

* さむーい！

## ベランダ使用不可

まだ乾燥中 again。

## Mastodonメンテナンスジョブ

Webのコンテナで `tootctl accounts cull` とかをやっていたらこの前設定したresource limitにひっかかって
killされてしまった。仕方ないので、jobをkubernetesにapplyするように変更した。

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