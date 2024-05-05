---
title: "メモリってeccのが良いわと思った日"
date: "2023-05-21T12:43:00.000Z"
lastmod: "2023-05-27T06:46:00.000Z"
draft: false
series: []
authors: []
tags: []
categories: []
created: "2017-06-13"
NOTION_METADATA:
  object: "page"
  id: "5d173e2d-df0e-43ab-bf5f-ed5421b563e6"
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
        start: "2017-06-13"
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
            content: "メモリってeccのが良いわと思った日"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "メモリってeccのが良いわと思った日"
          href: null
  url: "https://www.notion.so/ecc-5d173e2ddf0e43abbf5fed5421b563e6"
UPDATE_TIME: "2023-05-28T06:23:00.304Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">


サーバー用PCにメモリ増やした。そしたらPOST中に電源OFFされるようになった。


仕方ないから、昨日買ったメモリだけを差してみると起動する。


それだと容量的に足りないので、他のメモリその１を差すと落ちる。


他のメモリその２を差しても落ちる。


むむう？ じゃあ順番か！と思って、順番変えたら普通に動いた。なんだそれ。


8G 4G 8G 4G ( 左からスロット1,2,3,4） -> NG


8G 2G 8G 2G -> NG


4G 8G 4G 8G -> OK！


正直、メモリ8GBとか16GBくらいまでなら普通にアンバッファードなDIMMのが安くて良いけど


それ以上を狙おうと思うと、ECCの方が楽でいい。（16GBのメモリモジュールとか、ECCしかない）


このサーバーを代替わりさせるときは中古のサーバー機か何かにしようと思った。

