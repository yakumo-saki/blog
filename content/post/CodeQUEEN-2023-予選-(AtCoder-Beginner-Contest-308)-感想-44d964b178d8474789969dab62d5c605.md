---
title: "CodeQUEEN 2023 予選 (AtCoder Beginner Contest 308) 感想"
date: "2023-07-01T15:55:00.000Z"
lastmod: "2023-07-01T16:09:00.000Z"
draft: false
series: []
authors: []
tags:
  - "diary"
categories:
  - "atcoder"
created: "2023-07-01"
NOTION_METADATA:
  object: "page"
  id: "44d964b1-78d8-4747-8996-9dab62d5c605"
  created_time: "2023-07-01T15:55:00.000Z"
  last_edited_time: "2023-07-01T16:09:00.000Z"
  created_by:
    object: "user"
    id: "c443eb63-11a7-4629-b15e-c6ad918b79a0"
  last_edited_by:
    object: "user"
    id: "c443eb63-11a7-4629-b15e-c6ad918b79a0"
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
      multi_select:
        - id: "<aRy"
          name: "diary"
          color: "orange"
    categories:
      id: "nbY%3F"
      type: "multi_select"
      multi_select:
        - id: "ee190282-0968-419a-b0db-8f687dd93469"
          name: "atcoder"
          color: "blue"
    created:
      id: "vmFr"
      type: "date"
      date:
        start: "2023-07-01"
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
            content: "CodeQUEEN 2023 予選 (AtCoder Beginner Contest 308) 感想"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "CodeQUEEN 2023 予選 (AtCoder Beginner Contest 308) 感想"
          href: null
  url: "https://www.notion.so/CodeQUEEN-2023-AtCoder-Beginner-Contest-308-44d964b\
    178d8474789969dab62d5c605"
  public_url: null
UPDATE_TIME: "2023-07-01T16:49:31.636Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">


## トータルの感想


今回は、ABDの３問正解できた。疲れ気味でコンディションが万全という感じではなかったがなかなか良くできたと思う。


### A問題 New Scheme


A問題にしてはむずかしくない？な印象。それでもまぁ…
A問題としての難易度ではあるけれども。125点くらいくれてもよさそうな中身だなーとは思った。が、特筆するようなところはない。


### B問題 Default Price


問題名そのまま。とってもB問題らしいB問題だなーという感じ。
書いてあることをそのまま実装すればOK


### C問題 Standings


コードとしてはかけていたものの数ケースでWAが出るという状態でとても謎。
30分くらい悩んだが結局飛ばした。
…で、解説を読んでみると普通に実装すると誤差が出てWAになるようなケースが入っているらしい。分母を払って比較すれば良いとのことなんだけれども…
どうやってやるのそれ？状態だったので上位の人のコードを見てみたら、Decimalを使っていた。Decimalなら簡単にACできた。Decimal使ったらTLEするかと思いきや、全然問題ない感じ。
むしろ、文字列結合をループでやったらそれが原因でTLEになってしまいびっくりした。`’ ‘.join()` にしたら早くなってびっくりだった。


### D問題 Snuke Maze


またでた謎の文字列Snuke。なんとなく見た瞬間に深さ優先探索を実装するんだなと思った。C問題で時間を浪費したので残り40分くらいだったが、なんとか実装できた。最初、すでに探索済みの場所を飛ばす処理がバグっていてTLEしたのは焦った。最終提出は残り1分4秒だったのでホントギリギリ。でも、ACできてほんとに良かった。

