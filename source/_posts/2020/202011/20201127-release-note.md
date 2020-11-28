---
title:  "2020/11/27 Daily Release Note"
date:   2020-11-27 09:01:23 +0900
categories:
	- releasenote
---
# 起きたこと

* めっちゃ寒い

## ベランダ工事

今日は休み

## ディスク拡張まつり（S3）

もうずっと警告がでていたので残っている容量を全部割当した。
130GB -> 155GB。 とは言えまだ80%警告が出ているので、500GBのSSDを買ってきたほうがいいのかもしれない。

## ディスク容量拡張まつり(k8s node)

25GBの / 一本だったけれども、ディスク容量警告がzabbixから飛んでくるのがウザいのと
DBの一時バックアップを取ろうとすると容量不足になることがあったので増量。
32GBに増やした。

## Postgresqlのバージョンアップ

https://github.com/tianon/docker-postgres-upgrade

Dockerにしてしまっていると、バージョンアップが超めんどくさい。
具体的には、postgresqlの旧バージョンと新バージョンが両方インストールされていなければいけないのと
データファイルの領域が実使用量の倍必要という…上記のコンテナ使えば少し楽にできそうだが…
dockerhubに上がってるのでイケそう。

https://hub.docker.com/r/tianon/postgres-upgrade/

## リングフィット

* 休み。なんか工事のせいでタイミングつかめない

# TODO 

- [x] 衣替え
- [X] IX2215手配 -> 落札！
- [x] 秋葉原にお買い物
- [x] IX2215設定
- [x] IX2215に入れ替え
- [ ] IX2215のsyslogをelasticsearchに入れる
- [x] EnvBoyのESP32のやつを焼き直して本番に戻す
- [ ] ESP32のBluetooth回りを触ってみる
- [x] EnvBoyにmDNS機能を追加する
