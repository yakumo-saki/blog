---
type: post
title:  "2020/11/28 Daily Release Note"
date:   2020-11-28 09:01:23 +0900
tags:
  - releasenote
---
# 起きたこと

* めっちゃ寒い

## ベランダ工事

今日は工事

## Radeon RX560

RX560の中古を入手した。（7000円）
その後、RX580余ってるというお話があって正直涙目になった。
で、導入してみた結果… なんか表示がなめらかな気がする。
とても普通に動いている。ハマったのは…

* nvidia-settings で設定した /etc/X11/xorg.conf の設定は全部消す
* amdgpu.dc=1 をカーネルコマンドラインに追加
* /etc/X11/xorg.conf.d/20-amdgpu.conf に以下を記述。TearFreeを書かないとFirefoxのタブバーにマウスカーソルがあるとちらつく。

```
Section "Device"
        Identifier "AMD"
        Driver "amdgpu"
        Option "TearFree" "true"
EndSection
```

2020/11/29 このTearFree True の行を書くとフリーズしたりするのでやめた。

## TTGO T-Display

TFT-eSPIライブラリの設定方法がいまいちというか、ヘッダファイル書き換えろ。ってなっていて
ものすごく嫌な感じなので他のライブラリを試しているが、全然動かない。こまった。

## リングフィット

* 22分もやった。超がんばった。

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
