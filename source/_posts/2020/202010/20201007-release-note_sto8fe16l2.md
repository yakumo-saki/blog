---
title:  "2020/10/07 Daily Release Note"
date:   2020-10-07 09:01:23 +0900
categories:
	- releasenote
---

# お気持ち

* 雨が降る前に洗濯を済ませられたのでよかった
* 今日も飛来物が飛んできてる。

# Done

## Bluetoothイヤホン買い替え

<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=yakumo07-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=B011QIGSYG&linkId=83215635b719a127cd5ac7b94cca69d3"></iframe>

今まで使ってたのは上のやつ、やすかったし、特に文句はなかったんだけれどもイヤーチップとは別についてるゴムの部品を無くしてしまって（いつの間にかなくなってた）、歩いていると外れるようになってしまったので買い替え。

<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=yakumo07-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=B07SR8HSZS&linkId=9c84134955211bcc3cd3e77d3a737db6"></iframe>

ブラック以外の色にはなぜかAmazonアウトレットからの出品があるので、2,960円で購入できた。前のに比べると二倍の値段だなぁ…

## writefreely DBのutf8mb4化 (MariaDB 10.5)

Custom CSSに日本語の文字列を入れるとInternal Server Errorが起きるのでチェックしてみたら見事にDBの文字コードが latin1 だった。もうデフォルトutf8で良いんじゃないかなぁ。とちょっと思った。

show variable like 'char%'; で表示されるものはすべてutf8mb4に変更。
`set character_set_client=utf8mb4` のような感じで。
一応起動オプションにも追加しておいた。
```
          args:
            - "--character-set-server=utf8mb4"
            - "--collation-server=utf8mb4_unicode_ci"
            - "--character-set-client=utf8mb4"
```

```
ALTER DATABASE writefreely CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
ALTER TABLE accesstokens CONVERT TO CHARACTER SET utf8mb4;
ALTER TABLE appcontent CONVERT TO CHARACTER SET utf8mb4;
ALTER TABLE appmigrations CONVERT TO CHARACTER SET utf8mb4;
ALTER TABLE collectionattributes CONVERT TO CHARACTER SET utf8mb4;
ALTER TABLE collectionkeys CONVERT TO CHARACTER SET utf8mb4;
ALTER TABLE collectionpasswords CONVERT TO CHARACTER SET utf8mb4;
ALTER TABLE collectionredirects CONVERT TO CHARACTER SET utf8mb4;
ALTER TABLE collections CONVERT TO CHARACTER SET utf8mb4;
ALTER TABLE oauth_client_states CONVERT TO CHARACTER SET utf8mb4;
ALTER TABLE oauth_users CONVERT TO CHARACTER SET utf8mb4;
ALTER TABLE posts CONVERT TO CHARACTER SET utf8mb4;
ALTER TABLE remotefollows CONVERT TO CHARACTER SET utf8mb4;
ALTER TABLE remoteuserkeys CONVERT TO CHARACTER SET utf8mb4;
ALTER TABLE remoteusers CONVERT TO CHARACTER SET utf8mb4;
ALTER TABLE userattributes CONVERT TO CHARACTER SET utf8mb4;
ALTER TABLE userinvites CONVERT TO CHARACTER SET utf8mb4;
ALTER TABLE userinvites_backup CONVERT TO CHARACTER SET utf8mb4;
ALTER TABLE users CONVERT TO CHARACTER SET utf8mb4;
ALTER TABLE usersinvited CONVERT TO CHARACTER SET utf8mb4;
```

## リングフィット

* ドラゴ硬い
* 一気にキツくなってきた。
* 追加されたフィットスキルが辛い
* プランクが追加されたので明日が怖い

# TODO 

* 証明写真
* Tポイント移行
* クレジットカード解約（YJカード）
* クレジットカード解約2
* 歯医者予約


