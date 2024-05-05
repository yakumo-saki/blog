---
title: "erlite届いた。"
date: "2023-05-21T12:43:00.000Z"
lastmod: "2023-05-27T06:46:00.000Z"
draft: false
series: []
authors: []
tags: []
categories: []
created: "2016-10-04"
NOTION_METADATA:
  object: "page"
  id: "30f14bf4-e4cc-4d4a-bbc5-ccda295fd093"
  created_time: "2023-05-21T12:43:00.000Z"
  last_edited_time: "2023-05-27T06:46:00.000Z"
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
        start: "2016-10-04"
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
            content: "erlite届いた。"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "erlite届いた。"
          href: null
  url: "https://www.notion.so/erlite-30f14bf4e4cc4d4abbc5ccda295fd093"
UPDATE_TIME: "2023-05-28T06:25:33.853Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">


届いたのは昨日。


届いてまず最初にやったのはファームウェアのアップデート。最初はVer1.20で、


Webに出ている初期設定ウィザードが表示されない。


で、Web画面からファームウェアのアップデートをしようと思ったら見事に失敗する。


とりあえず、現時点の最新のVer1.90じゃダメなのかと思って1.60, 1.30 も


試したけど全部ダメ。なんだこれと思いつつ、ググって見ると、SSHで入って


コマンドラインからバージョンアップしろという記事を発見。


SSHからログインして、1.90にアップデートしようとしたところ、見事に失敗。


もしかしてと思って一度ルーターを再起動、その直後にアップデートしたところ成功した。


で、Webからログインしなおしてみると、初期設定ウィザードが表示された。


スムーズに初期設定をしつつ、最後に管理者のユーザー名とパスワードを決めるところで、


思わず、ユーザー名 root としたところ、再ログイン不可になった。SSHも不可。


恐らくコンソールから入れば入れるんだろうけど、諦めて初期化した。


＃そりゃダメだよね。


一通り設定を済ませてふと気づいた。PPPoEのMTUが1492になってる。


これ、１４５４が最適なはずと思って変更してみると、速度が明確に落ちた。


うーん、不思議と思いつつ1492で使う事にした。


Web調べてみると、CPUがRTX1200とほぼ一緒（ERLite-3の方が型番がちょっと大きい）


それでいて、今回の総額1万円ちょっと。かなりお買い得な感じ。


＃普通に使うには、ヤフオクでRTX1200が１2,000円くらいになっているのでそっちのが。


＃RTXの作りの良さはお墨付き（10年平気で使える）

