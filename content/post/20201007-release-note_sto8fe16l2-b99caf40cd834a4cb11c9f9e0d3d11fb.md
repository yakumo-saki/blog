---
title: "20201007-release-note_sto8fe16l2"
date: "2023-05-21T12:45:00.000Z"
lastmod: "2023-05-27T02:48:00.000Z"
draft: false
series: []
authors: []
tags: []
categories: []
created: "2020-10-07"
NOTION_METADATA:
  object: "page"
  id: "b99caf40-cd83-4a4c-b11c-9f9e0d3d11fb"
  created_time: "2023-05-21T12:45:00.000Z"
  last_edited_time: "2023-05-27T02:48:00.000Z"
  created_by:
    object: "user"
    id: "c443eb63-11a7-4629-b15e-c6ad918b79a0"
  last_edited_by:
    object: "user"
    id: "1219c5ae-11d8-48ce-aec6-d385ae29af49"
  cover: null
  icon: null
  parent:
    type: "database_id"
    database_id: "9dbcf20b-4d97-4d69-98ba-8ae9c8c1f58d"
  archived: false
  properties:
    series:
      id: "B%3C%3FS"
      type: "multi_select"
      multi_select: []
    draft:
      id: "JiWU"
      type: "checkbox"
      checkbox: false
    authors:
      id: "bK%3B%5B"
      type: "people"
      people:
        - object: "user"
          id: "c443eb63-11a7-4629-b15e-c6ad918b79a0"
          name: "Saki Yakumo"
          avatar_url: "https://s3-us-west-2.amazonaws.com/public.notion-static.com/3ad1c4\
            97-61e1-48f1-85e8-6acf4c4fdb2d/maoh_icon_twitter_400x400.png"
          type: "person"
          person:
            email: "marqut@ziomatrix.org"
    tags:
      id: "jw%7CC"
      type: "multi_select"
      multi_select: []
    categories:
      id: "nbY%3F"
      type: "multi_select"
      multi_select: []
    created:
      id: "vmFr"
      type: "date"
      date:
        start: "2020-10-07"
        end: null
        time_zone: null
    summary:
      id: "x%3AlD"
      type: "rich_text"
      rich_text: []
    Name:
      id: "title"
      type: "title"
      title:
        - type: "text"
          text:
            content: "20201007-release-note_sto8fe16l2"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "20201007-release-note_sto8fe16l2"
          href: null
  url: "https://www.notion.so/20201007-release-note_sto8fe16l2-b99caf40cd834a4cb1\
    1c9f9e0d3d11fb"
UPDATE_TIME: "2023-05-28T06:10:23.660Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">


# お気持ち

- 雨が降る前に洗濯を済ませられたのでよかった
- 今日も飛来物が飛んできてる。

# Done


## Bluetoothイヤホン買い替え


[embed](//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=yakumo07-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=B011QIGSYG&linkId=83215635b719a127cd5ac7b94cca69d3)


今まで使ってたのは上のやつ、やすかったし、特に文句はなかったんだけれどもイヤーチップとは別についてるゴムの部品を無くしてしまって（いつの間にかなくなってた）、歩いていると外れるようになってしまったので買い替え。


[embed](//rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=000000&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=yakumo07-22&language=ja_JP&o=9&p=8&l=as4&m=amazon&f=ifr&ref=as_ss_li_til&asins=B07SR8HSZS&linkId=9c84134955211bcc3cd3e77d3a737db6)


ブラック以外の色にはなぜかAmazonアウトレットからの出品があるので、2,960円で購入できた。前のに比べると二倍の値段だなぁ…


## writefreely DBのutf8mb4化 (MariaDB 10.5)


Custom CSSに日本語の文字列を入れるとInternal Server Errorが起きるのでチェックしてみたら見事にDBの文字コードが latin1 だった。もうデフォルトutf8で良いんじゃないかなぁ。とちょっと思った。


show variable like ‘char%’; で表示されるものはすべてutf8mb4に変更。 `set character_set_client=utf8mb4` のような感じで。 一応起動オプションにも追加しておいた。


```text
          args:
          - "--character-set-server=utf8mb4"
          - "--collation-server=utf8mb4_unicode_ci"
          - "--character-set-client=utf8mb4"
```


```text
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

- ドラゴ硬い
- 一気にキツくなってきた。
- 追加されたフィットスキルが辛い
- プランクが追加されたので明日が怖い

# TODO

- 証明写真
- Tポイント移行
- クレジットカード解約（YJカード）
- クレジットカード解約2
- 歯医者予約
