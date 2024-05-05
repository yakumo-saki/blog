---
title: "windows7-に-daemon-toolsを入れる件（成功）"
date: "2023-05-21T12:38:00.000Z"
lastmod: "2023-05-27T06:52:00.000Z"
draft: false
series: []
authors: []
tags: []
categories: []
created: "2009-05-01"
NOTION_METADATA:
  object: "page"
  id: "e153aab0-64e2-485e-9d87-ce6f8026a95f"
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
        start: "2009-05-01"
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
            content: "windows7-に-daemon-toolsを入れる件（成功）"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "windows7-に-daemon-toolsを入れる件（成功）"
          href: null
  url: "https://www.notion.so/windows7-daemon-tools-e153aab064e2485e9d87ce6f8026a\
    95f"
UPDATE_TIME: "2023-05-28T08:23:58.306Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">


メモ代わりに書いておく。


Windows7にDaemonToolsをインストールしようとしたときに、


SPTDのインストールで何度も再起動を要求される場合の対処法。


考えられるパターン


・VistaからのアップグレードでWindows7を入れた


・アップグレード前にDaemon-Toolsを入れていた。


・もしくは古いバージョンを入れようとした。


１ レジストリ削除


レジストリエディタを起動して以下の場所へGO


HKEY_LOCAL_MACHINE


とりあえず、存在するキーを全部削除。


２ 再起動


３ c:32.sys を削除


４ 最新バージョン（Windows7対応版）のDaemon-Tools をインストール。


なんか、Windowsのアップグレードの時にSPTDが無効にされてしまうそうですよ。


で、そのままだとバージョンアップしても何しても動かないと。


＃イベントビューアにSPTD関連のエラーが出てました。私の場合は。

