---
title: "timemachine設定したよ"
date: "2023-05-21T12:38:00.000Z"
lastmod: "2023-05-27T06:52:00.000Z"
draft: false
series: []
authors: []
tags: []
categories: []
created: "2009-05-24"
NOTION_METADATA:
  object: "page"
  id: "969f1232-f99f-4883-bcbd-7c19fd62e0d1"
  created_time: "2023-05-21T12:38:00.000Z"
  last_edited_time: "2023-05-27T06:52:00.000Z"
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
        start: "2009-05-24"
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
            content: "timemachine設定したよ"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "timemachine設定したよ"
          href: null
  url: "https://www.notion.so/timemachine-969f1232f99f4883bcbd7c19fd62e0d1"
UPDATE_TIME: "2023-05-28T08:23:27.559Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">


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

