---
title: "macbookproを買い替えた件（その２）"
date: "2023-05-21T12:38:00.000Z"
lastmod: "2023-05-27T06:52:00.000Z"
draft: false
series: []
authors: []
tags: []
categories: []
created: "2009-09-17"
NOTION_METADATA:
  object: "page"
  id: "98fba157-6809-4880-a7bb-eadf67b1a492"
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
        start: "2009-09-17"
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
            content: "macbookproを買い替えた件（その２）"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "macbookproを買い替えた件（その２）"
          href: null
  url: "https://www.notion.so/macbookpro-98fba15768094880a7bbeadf67b1a492"
UPDATE_TIME: "2023-05-28T07:59:45.984Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">


そういえば、Macを買い替えたのははじめて。


TimeMachineのバックアップはとってあったものの、新しいマシンに


戻るのか？ なんて思いながら新Macをとりあえず起動してみる。


駄目な例：


前のMacで使っていたユーザー名でユーザーを作ってログイン。


その後、TimeMachineをマウントしてそこからリストア。


→ パーミッションがおかしくなったっぽくて、うまく起動しない


アプリが多数。書類フォルダ以下なら普通に戻っていた。


とはいえ、なんか中途半端過ぎ。


成功したやりかた：


適当なユーザーを作ってログイン。その後、アプリケーション→ユーティリティ→移行アシスタントを起動。


TimeMachineのバックアップから移行みたいなのを選んで、サクサクっと戻す。


＃適当なユーザーを作っているのは、同名のユーザーがいると移行アシスタントが


＃エラーを吐いて止まるため。


この方法なら、インストールが必要なアプリ以外は問題なく戻った。


書類ももちろん戻る。


ちなみに、Time Capsule以外の普通のNASとかにTime Machineの


バックアップを作っている場合は、例のおまじない


defaults write com.apple.systempreferences TMShowUnsupportedNetworkVolumes 1


を叩いて、旧マシンで作ったsparsebundleファイルをマウントしてから


移行アシスタントを起動すれば認識してくれる。


Windowsだと、マシン変えたら再セットアップ→長い長いアップデート→


長い長い長いカスタマイズ


なのに、Macだとこんなに簡単に移行が済んでしまうのかと、ちょっと拍子抜け。


ついでに、新しいMacのTime Machineの設定も済ませる。MACアドレスがかわっているので


イメージ作り直しした程度。まぁ、簡単♪

