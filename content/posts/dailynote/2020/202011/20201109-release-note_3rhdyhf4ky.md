---
title:  "2020/11/09 Daily Release Note"
date:   2020-11-09 09:01:23 +0900
tags:
  - releasenote
---

# 起きたこと

デザフェス行きたかったけど例のコロナが怖くていけなかった。。
後遺症残るとか聞いたら怖すぎてリスクがデカく見える

## OpenWRT

IPv6を通した。
https://blog.nerves-concord.io/openwrt-ipv6-to-lan-without-hikari-denwa/

## パックマン Championship Edition2

ゲームPCに入ってたのを思い出してちょっとやったらハマった。

## zabbix復活

Raspberry Pi 3Bに入れていた Zabbix 5.0 を 5.2にアップグレードしたら、zabbix-serverがDBをマイグレーションする時に異常終了してしまい（double freeみたいなエラーメッセージ）、中途半端DBバージョンとなってしまって、立ち上がらない状態になっていたのを修復した。
なお、これは公式のaptレポジトリから入れたzabbix5.2で起きている。ソースコードからRPi3上でzabbix-serverをコンパイルして試してみたが、同じ結果だった。
DBのバックアップをとっていなかったので（アカン）、armhfでのテストがされてないだけでさすがにx86_64なら行けるだろうと踏んで、以下の手順で修復した

* RPi上の中途半端な状態のDBをダンプ (`pg_dump -Fp zabbix`)
* ダンプをx86_64なdockerが使えるホストに転送
* dockerでpostgresql（バージョンをRPiに合わせる）とzabbix-serverを構成する（docker-composeファイルをおまけにつけておく）
* docker上でpostgresだけ起動してダンプをロード、zabbixユーザー、DBが必要なら作る。（必要なはず）
* zabbix-serverを起動してDBマイグレートさせる。
* docker上のpostgresのDBをダンプ
* RPiに転送して取り込み
* RPi上でzabbix-server を起動する

```
version: '3.3'

services:

  server:
    image: zabbix/zabbix-server-pgsql:ubuntu-5.2-latest
    environment:
      DB_SERVER_HOST: db
      POSTGRES_USER: zabbix
      POSTGRES_PASSWORD: example

  db:
    image: postgres:11
    environment:
      POSTGRES_PASSWORD: example
    ports:
    - "5432:5432"
    volumes:
    - ./postgres_data:/var/lib/postgresql/data
```

## サーバー証明書の更新をJenkins化

cronで処理していたが、ド忘れの原因になるしログが残らないのでJenkins側で処理するようにした。

## kubernetesのresource

k9sで見ているとresourceが記述されてないpodが多くて%CPU/R, /L とか %MEM/R, /Lが0になってしまって寂しいのと、ノードの偏りがあるのでresourceをできるだけ記述していっている。 ESXiのノリでcpu: 2000M とか書いたらスケジュールできなくなって焦った。
cpu値は、1秒あたり処理に使える時間(ms)なので cpu: 1000m と書いたら1CPU占拠まで。2000mとか書けばCPU2個使える。

## リングフィット

オババが腕、足、腹筋全部に負荷をかけてくるのでしんどかった

# TODO 

* 衣替え
* IX2215手配