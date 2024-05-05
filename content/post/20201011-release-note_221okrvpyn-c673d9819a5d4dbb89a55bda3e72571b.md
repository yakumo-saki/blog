---
title: "20201011-release-note_221okrvpyn"
date: "2023-05-21T12:45:00.000Z"
lastmod: "2023-05-27T02:48:00.000Z"
draft: false
series: []
authors: []
tags: []
categories: []
created: "2020-10-11"
NOTION_METADATA:
  object: "page"
  id: "c673d981-9a5d-4dbb-89a5-5bda3e72571b"
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
        start: "2020-10-11"
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
            content: "20201011-release-note_221okrvpyn"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "20201011-release-note_221okrvpyn"
          href: null
  url: "https://www.notion.so/20201011-release-note_221okrvpyn-c673d9819a5d4dbb89\
    a55bda3e72571b"
UPDATE_TIME: "2023-05-28T06:09:56.705Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">


# お気持ち

- くもり。ちょっと寒くて微妙な感じ。
- 歯が痛いのが割と真面目に痛いので歯医者を予約しようと思ったら日曜休み。

# 起きたこと


## ネットワークがびっくりするくらい不調


とりあえず、念の為ルーター不調を疑ってER-XからpfSense(VM)に入れ替え。 コレ自体は昨日終わったけれども、やっぱり不調（多分DSLiteポート不足）なので、IPv6を通すことに。（IPv6でアクセスする分にはDSLiteは関係ないのと、少しでもIPv6側にトラフィックが流れればそれだけポートが節約できる）


## IPv6を生活LANに


pfSenseはND Proxyとか当然できないので、IPv6 NATで通すことに。 良くないのはわかるけれども、正直、NATしていれば直接内側に攻撃できないという安心感がすごくある。あとで別途記事にしたいなぁと思ってる。


https://blog.nerves-concord.io/pfsense-ipv6-access-via-nat/


## 応用情報の勉強


## リングフィット

- マウンテンクライマー、負荷的にも騒音的にも無理だった

# 謎の飛来物

- なし

# TODO

- 歯医者予約
