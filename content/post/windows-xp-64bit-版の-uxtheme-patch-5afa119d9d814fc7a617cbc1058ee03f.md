---
title: "windows-xp-64bit-版の-uxtheme-patch"
date: "2023-05-21T12:28:00.000Z"
lastmod: "2023-05-27T07:25:00.000Z"
draft: false
series: []
authors: []
tags: []
categories: []
created: "2005-12-23"
NOTION_METADATA:
  object: "page"
  id: "5afa119d-9d81-4fc7-a617-cbc1058ee03f"
  created_time: "2023-05-21T12:28:00.000Z"
  last_edited_time: "2023-05-27T07:25:00.000Z"
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
        start: "2005-12-23"
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
            content: "windows-xp-64bit-版の-uxtheme-patch"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "windows-xp-64bit-版の-uxtheme-patch"
          href: null
  url: "https://www.notion.so/windows-xp-64bit-uxtheme-patch-5afa119d9d814fc7a617\
    cbc1058ee03f"
UPDATE_TIME: "2023-05-28T11:04:35.852Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">


http://www.anti-tgtsoft.com/repository/uxtheme/


今のところここにあります。


WindowsX製 Uxtheme Multi Patcher 4.0 は動作してくれませんでした。


で、上のリポジトリから64bit版をダウンロードしてきて、解凍。


そうすると、 Uxtheme.dll と uxtheme.dl_ があるのでそれを


%windir%以下のファイルと置き換える。


ただし、普通に起動してる時にこれをしようとすると、Windows File Protectに


引っかかるかもしれないので、セーフモードで行う。


置き換え対象は以下の通り


c:32.dll


c:64.dll


c:64.dl_


一つだけ、置き換えに失敗する場所があるが、それは置き換える先のuxtheme.dll


の名前を変更して、それからコピーすればOK。


…ちなみに、どっちか忘れると64bitなプログラムだけテーマが使えるようになった


りして、結構間抜けなことになるｗ


あ、そうそう。これを入れると一部英語になってしまいます。


実害は全然ありませんが＾＾；

