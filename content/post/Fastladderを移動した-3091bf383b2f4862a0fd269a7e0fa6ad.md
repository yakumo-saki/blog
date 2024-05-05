---
title: "Fastladderを移動した"
date: "2023-05-21T07:29:00.000Z"
lastmod: "2023-05-24T14:17:00.000Z"
draft: false
series: []
authors: []
tags:
  - "diary"
categories: []
created: "2023-04-09"
NOTION_METADATA:
  object: "page"
  id: "3091bf38-3b2f-4862-a0fd-269a7e0fa6ad"
  created_time: "2023-05-21T07:29:00.000Z"
  last_edited_time: "2023-05-24T14:17:00.000Z"
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
      multi_select: []
    created:
      id: "vmFr"
      type: "date"
      date:
        start: "2023-04-09"
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
            content: "Fastladderを移動した"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "Fastladderを移動した"
          href: null
  url: "https://www.notion.so/Fastladder-3091bf383b2f4862a0fd269a7e0fa6ad"
UPDATE_TIME: "2023-05-28T15:59:44.899Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">


# why


今までは、自宅内サーバー上で稼働していたが、Oracle Cloud上のK8Sクラスタに乗せることにした。これは、自宅サーバー停止運用のためにサーバーの機能をどんどん剥がしていってるという流れの中にある作業だった。 …ただ、x86->ARMにアーキテクチャが変わるのでそこで毎度躓くんですけどね…


# やったこと

- 目論見で、CircleCIでコンテナをビルドすればおっけー。楽勝！だったが…
- 色気をだして、Gemをアップデートとかしたら見事に動かなくなった。
- それでもコンテナをビルドしてk8sに乗せてみたらcrawlerが妙な落ち方をする。
- 原因を調べていくと文字コードだったりMySQLだったり…
- モンキーパッチだけで切り抜けようと思ったが諦めてforkすることにした
- 長年使わせてもらってるFastladderだし、Rails 7対応とかをやれたらいいなと思ってる
- その時は多分、Fastladderと別物になるのでPhantasmaシリーズにリネームしようと思う。
- phatasma-flow, phantasma-resume, phantasma-reader で既にシリーズ3作（予定）
- で、結局forkして開発環境整えて、postgresqlに載せ替えて…とやったら1日潰れた
- ここらへんの判断がなんか遅い感じはする。forkをもっと早くやればここまでかからなかったろうに。
- 成果物： https://github.com/yakumo-saki/fastladder
- 成果物： https://hub.docker.com/repository/docker/yakumosaki/fastladder-aarch64/general
- kubernetes用のdeployは手元にあるけどちょっとキレイにしないとkustomizeすら使ってないのでしんどい

# 蛇足

- Inoreaderに乗り換えようとしたら、Freeプランは150Feedまでだった。
- 登録されているフィードは300を超えているのでもう全然無理。悲しみ
