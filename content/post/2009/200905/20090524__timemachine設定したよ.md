---
title: TimeMachine設定したよ
author: 八雲
type: post
date: 2009-05-24T14:44:53+00:00
url: /2009/05/1308
tags:
  - Mac
  - 日記

---
Webを見まくって設定。
  
参考URL
  
http://blog.fiilse.com/2008/04/timemachine.html
  
http://blog.openmedialabo.net/index.php/archives/232

基本的には、手順をなぞっただけなのであんまりおもしろことはしてません。
  
という訳で手順を覚え書き程度に。

１ TimeCapsule以外のNASをTimeMachineに認識させる
  
sudo defaults write com.apple.systempreferences TMShowUnsupportedNetworkVolumes 1
  
※ 別にsudoしなくてもいい気がするんだけど、一応sudoしといた。

２　Macアドレスを取得
  
ifconfig でわかる。内蔵LANだったら en0 の所を見ればわかる。
  
ether xx:xx:xx:xx:xx:xx
  
ターミナルでやれば、コピペ使えて後で便利。

３ ディスクイメージ作る。
  
ファイル名　マシン名_MACアドレスから：を抜いたもの
  
パーテーション　ハードディスク
  
イメージフォーマット　スパースバンドル
  
※　残りの項目は何でもOK.
  
※　容量はでかくするとNASに転送するとき面倒なので、後で変更が良い

４　ディスクイメージをNASに転送する
  
ルートに転送しなければならないらしい。

５　ディスクサイズ変更
  
転送したイメージファイルをマウントして、ディスクユーティリティ
  
を使ってサイズ変更。マウント状態だとサイズ変更できないので、
  
マウント解除しないとダメ。
  
（マウントしてると、ツールバーの右の方にある、イメージのサイズを変更
  
ボタンが押せないのでわかる）
  
で、とりあえず全量と同じくらいのサイズに拡大。

６　TimeMachineを設定。
  
環境設定→TimeMachineで設定。

…ほとんど参考にしたブログの手順のまんま。
  
使用したのは以下の物
  
NAS: WZR-HP-G300NH
  
HDD:USB HDD (WD10EADS 1TB)
  
※ ルータにUSBHDDをつなぐとNASにもなる！っていう逸品。
  
　転送速度そんなに早くないけどまぁまぁ。
