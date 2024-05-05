---
title: "AtCoder Beginner Contest 310感想"
date: "2023-07-16T09:07:00.000Z"
lastmod: "2023-07-16T10:48:00.000Z"
draft: false
series: []
authors: []
tags:
  - "diary"
categories:
  - "atcoder"
created: "2023-07-16"
NOTION_METADATA:
  object: "page"
  id: "e33ef001-7838-4bee-b5f3-dd2fdd969248"
  created_time: "2023-07-16T09:07:00.000Z"
  last_edited_time: "2023-07-16T10:48:00.000Z"
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
        start: "2023-07-16"
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
            content: "AtCoder Beginner Contest 310感想"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "AtCoder Beginner Contest 310感想"
          href: null
  url: "https://www.notion.so/AtCoder-Beginner-Contest-310-e33ef00178384beeb5f3dd\
    2fdd969248"
  public_url: null
UPDATE_TIME: "2023-07-16T10:49:24.502Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">


## まとめ


今回はABC3完、ノーペナルティでした。
昼間の用事で疲れ果てていた割には想定通りの成績が出せているので及第点だと思っている。


今回のコンテストはなんか全体的に問題の難易度がひねくれてるような気がした。


### A問題 Order Something Else


何も考えずに計算して一番安いのを出すだけ。
とってもA問題っぽい。ちょっと好き。


### B問題 Strictly Superior


めっちゃ分かりにくかった。とりあえず値段が高い順に並び替えて、一個ずつ着目してチェックする感じで実装した。着目中のより安いやつ〜で上位互換があるかないかをチェックした。


今思うと、この実装バグってる可能性がある。同一価格で上位互換が出ちゃったときに並び順次第ではスルーしちゃう気がする。 何も考えずに全チェックした方がよかったかも。TLEするほどの件数にはなっていないので。ちょっと反省


### C問題 Reversible


B問題より簡単な気がする。文字列を反転させたのと反転していないののうち、文字コード順で若い方を採用してsetに格納するだけ。setは中身がユニークになるので、最後に len(set) を出力すればOK。 …やっぱりB問題より簡単では


### D問題


眠気とだるさで問題文を見てあ、DPだこれ無理だわ。と諦めた。実がDFSで解けるというツイートを見たのでなんというか諦めちゃだめだったかー。という感じ。

