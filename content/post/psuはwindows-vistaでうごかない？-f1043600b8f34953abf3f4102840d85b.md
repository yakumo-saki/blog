---
title: "psuはwindows-vistaでうごかない？"
date: "2023-05-21T12:32:00.000Z"
lastmod: "2023-05-27T07:01:00.000Z"
draft: false
series: []
authors: []
tags: []
categories: []
created: "2006-10-10"
NOTION_METADATA:
  object: "page"
  id: "f1043600-b8f3-4953-abf3-f4102840d85b"
  created_time: "2023-05-21T12:32:00.000Z"
  last_edited_time: "2023-05-27T07:01:00.000Z"
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
        start: "2006-10-10"
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
            content: "psuはwindows-vistaでうごかない？"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "psuはwindows-vistaでうごかない？"
          href: null
  url: "https://www.notion.so/psu-windows-vista-f1043600b8f34953abf3f4102840d85b"
UPDATE_TIME: "2023-05-28T09:14:05.727Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">


一瞬、焦りましたよ。


気まぐれでVistaのRC2にOSを変えたら、PSUが起動しなくなりました。


起動時のメニューまでは出るのですが、ストーリーモードを選んでも


オンラインモードを選んでも、dx9～.dllがありません。とか言って


落ちてしまいました。。。


で、結局、DirectX関係のファイル、それもDirectX9のファイルとあたりを


つけて、DirectX9をインストール。　VistaだとDirectX10が標準で装備されて


いるのですが…　DirectXのインストール時にはバージョンが新しいファイルを


上書きしないようになっていた（はず）なので、やってもシステムがおかしくなる


ことはない（はず）。　これをしたあとは無事に起動してくれました。


まとめ：


PSUがWindowsVista (RC2)で動かない場合は、DirectX9をインストールすればOK


http://support.microsoft.com/kb/910813/en-us


＃OKじゃなかったです…追記参照。


…え？　メインマシンにベータ版のOS入れるな？　ま、まぁそうなんだけど。


追記：


たしかに、初期バージョンはそれで起動できましたが…


なんか、スピードハック使ってるから強制終了しますとか言われてしまったり。


で…今は、nProtectのアップデート中にブルースクリーンで落ちます。


…ひどい。ひどすぎる。。。　ふつうに落ちるならまだしもブルースクリーンてｗ


仕方ないので信長インストールして私設会話で遊んでます…


「(‘ヘ`;まいったなぁ．．

