---
title: "Fortigate 50EにOpenWRTを入れて遊ぶ"
date: "2023-10-15T14:59:00.000Z"
lastmod: "2023-10-15T15:07:00.000Z"
draft: false
series: []
authors: []
tags:
  - "diary"
  - "newgear"
categories:
  - "diary"
created: "2023-10-15"
NOTION_METADATA:
  object: "page"
  id: "aa79ab8a-841f-48e0-bf03-d664003dc045"
  created_time: "2023-10-15T14:59:00.000Z"
  last_edited_time: "2023-10-15T15:07:00.000Z"
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
        - id: "c03fcb84-b340-4e64-9c59-a2a9ec4e44fa"
          name: "newgear"
          color: "blue"
    categories:
      id: "nbY%3F"
      type: "multi_select"
      multi_select:
        - id: "EU|s"
          name: "diary"
          color: "yellow"
    created:
      id: "vmFr"
      type: "date"
      date:
        start: "2023-10-15"
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
            content: "Fortigate 50EにOpenWRTを入れて遊ぶ"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "Fortigate 50EにOpenWRTを入れて遊ぶ"
          href: null
  url: "https://www.notion.so/Fortigate-50E-OpenWRT-aa79ab8a841f48e0bf03d664003dc\
    045"
  public_url: null
UPDATE_TIME: "2023-10-15T15:49:16.713Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">


### 最初に


前に、OSPNでおすすめされてから、実際に買うまでこんなに時間が空いてしまった。
本当に大破さんには足を向けて寝られない。ありがとうございます。


### インストールのしかた


大破さんのブログ参照。で終わってしまうので割愛。


### やらかしたこと


最初のTFTPでOpenWRTのイメージをロードするところで、W/B/R のどれかを聞かれるシーンがある。ここで間違えてWを押してしまった。すると、プライマリの起動パーティションにOpenWRTの最小のものが書き込まれてしまい、たしかにOpenWRTは起動できるものの、sysupgradeでイメージを書き込んでも反映されずにドハマリした。


なお、ここで落ち着いて、kn2 パーティションの中身を kernel パーティションに書いてやりなおせば良い（このやり方も大破さんのブログに書いてある）


そして、テンパってTFTPのメニューのformat なんたらを実行したせいで、一台おしゃかにしてしまった。（後に復活させているが）


### 二台目を購入


ACアダプタはあるので、ACアダプタなしの安いものを購入。
手順通りにOpenWRTを起動して、とりあえずmtdの中身をバックアップした。
で、このバックアップを前述の壊した個体に書き戻して…1台目も復活。


### で、何に使うの？


…ただのスイッチングHUBとして使っている。7ポートある、VLANが使えるマネージドなHUBだと考えると安い。そしてUSBメモリを指して記憶領域を広げれば、2GBもRAMがあるので、dockerでなにか遊べるだろうという魂胆である。


2台もあるのでどうしたものか… 本体よりACアダプタのほうが高いし。

