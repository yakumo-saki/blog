---
type: post
title:  "2020/11/26 Daily Release Note"
date:   2020-11-26 09:01:23 +0900
tags:
  - releasenote
---
# 起きたこと

* 晴れててあたたたかい

## ベランダ工事

防水塗り直しが始まったっぽい。

## Switchbot

昨日から不調だったけど、AWS障害らしい。
ついでに、Switchbotプラグの消費電力を取得したかったのでBLEを勉強してみる。
…ある程度勉強してから気づいたんだけれども、SwitchbotプラグはWiFiオンリーだった。
これはSwitchbotアプリから該当するデバイスの設定画面でWiFiとかBLEのMACアドレスが表示される
ところに、WiFiしか表示されていなかったのと、SwitchbotプラグのMACアドレスが、Espressifのもので
おそらく、内蔵してるのはESP8266と思われたため。ESP32なら希望はあるけれども。
とりあえず、BLEスキャナ（スマホアプリ）を起動しながらSwitchbotプラグをコンセントから抜き差し
した限りでは、BLEは搭載していない。という感じだった。
（サポートページにBLEも積んでるっぽい表現があるけれども、流用した際の誤記だと思う）

## Switchbotその2

あきらめてサポートにメールで問い合わせてみたら、1~2時間で返信がきて、そういう機能はない。
ということがわかった。ただ、開発TODOリストには入れた。ってことなのでもしかしたらつくかも。
ついたらいいなぁ…

## Bluetooth Low Energyの勉強

* 2402MHz 〜 2480MHz まで 2MhHz幅で40chある。（37, 38, 39が間に挟まる)
* ch 37〜39 はBLEのディスカバリと接続の制御用
* BLE通信ではセントラル(マスタ)とペリフェラルの役割がある

## liveness probe

liveness probe設定してたら、環境変数読まないじゃんかこれぇと思ったら…

```
liveness:
  command:
  - /bin/bash
  - -c
  - pg_isready -U ${POSTGRES_USER} -d ${POSTGRES_DB} -h localhost
```

って設定したらいった。そりゃそうだ、環境変数の置換はシェルの機能だわ。
ちなみに、`pg_isready` は存在しないユーザーを指定してもDBが稼働してれば正常終了する。
ただし、ログに role "root" not found. みたいなのが出てしまってとてもウザい。

## Postgresqlのバージョンアップ

https://github.com/tianon/docker-postgres-upgrade

Dockerにしてしまっていると、バージョンアップが超めんどくさい。
具体的には、postgresqlの旧バージョンと新バージョンが両方インストールされていなければいけないのと
データファイルの領域が実使用量の倍必要という…上記のコンテナ使えば少し楽にできそうだが…

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
