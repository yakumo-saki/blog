---
title:  "2020/12/11 Daily Release Note"
date:   2020-12-11 09:01:23 +0900
tags:
  - releasenote
---
# 起きたこと

* 昼間は温かいのに夜寒い！

## ログ取り込み見直し

フロントのnginxのログが取り込まれてなかった。filebeatのmoduleは有効になっていたものの、
nginxのログを /var/log/nginx/{access.log, error.log} に変更していたのが原因。

## Jenkinsジョブの一部をdeclarative pipeline に変更

Scripted Pipelineで書いていたけど推奨されない書き方なのでやってみた。
確かに形式がカッチリ決まっていて良いかもしれないけどちょっと冗長な気もする。
変数の定義がよくわからなかったのが使いやすくなった。

## バックアップジョブが壊れていたのを修正

zabbixのDBバックアップが壊れていた。postgresを入れ直したのにpg_hba.confを書き換えてなくて
pg_dump -U user が失敗していた。

## リングフィット

* なし

# TODO 

- [x] EnvBoyにmDNS機能を追加する
- [x] chinachuをk8sに乗せる
- [x] サーバーのファン交換
- [x] lambrollのAURパッケージを作る
- [ ] サーバーのファン交換(12cm)
- [ ] ESP32のBluetooth回りを触ってみる
