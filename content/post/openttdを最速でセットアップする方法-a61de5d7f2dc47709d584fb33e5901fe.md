---
title: "openttdを最速でセットアップする方法"
date: "2023-05-21T12:39:00.000Z"
lastmod: "2023-05-27T06:52:00.000Z"
draft: false
series: []
authors: []
tags: []
categories: []
created: "2011-03-03"
NOTION_METADATA:
  object: "page"
  id: "a61de5d7-f2dc-4770-9d58-4fb33e5901fe"
  created_time: "2023-05-21T12:39:00.000Z"
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
        start: "2011-03-03"
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
            content: "openttdを最速でセットアップする方法"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "openttdを最速でセットアップする方法"
          href: null
  url: "https://www.notion.so/openttd-a61de5d7f2dc47709d584fb33e5901fe"
UPDATE_TIME: "2023-05-28T07:55:18.497Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">


ただの布教用記事です。


おもしろいゲームですが、睡眠時間が危機に晒される可能性があります。。


箱庭が好きならきっと楽しめるかと。

- ** 1 本体のダウンロード

http://www.openttd.org/en/download-stable にアクセスする。


ページの下の方にある、 “Download stable” の一番下に


Windows XP / Vista / 7 (xxbit) (zip archive) というリンクがあるのでそれをクリックしてダウンロード。

- ** 2 OpenGFXのダウンロード

http://www.openttd.org/en/download-opengfx にアクセスする。


ゲーム中に使用するグラフィックである OpenGFXをダウンロードする。


ページの下の方、 Binary file for all platforms(zip archive) というリンクからダウンロード出来る。

- ** 3 ファイルの展開

・1,2でダウンロードしたファイルを展開する。場所はどこでもOK。


・2のzipを展開した中身を 1 を展開した中の、 data フォルダの中に投げ込む


![](https://obs.maoh.company/yakumoblog/2018/07/openttd1-300x212.png)

- ** 4 一回起動してみる

初期設定ファイルが初回起動時に生成されるのでここで一度ゲームを起動します。


OpenTTD.exe を起動するとタイトル画面が出るはず。


が。なにやら赤いダイアログボックスが開いてもいるはずです。


しかも、音楽も効果音もならない。ですがこれで正常です。 赤いダイアログボックスは×で閉じて


一番左下のオンラインの項目を確認ボタンを押してください。


少し待つと、リストにズラズラっと一覧が表示されるので、次のものを選択してください。


＃リスト内の □ をクリック


・AI – AdmiralAI


・AI – CluelessPlus


・AI – PathZilla


・AI – trAIns


・ベース音 – OpenSFX （これ、一番下です）


・ベース音楽 – OpenMSX


チェックし終わったら右下のダウンロードボタンを押すと、自動的にダウンロードされます。


ダウンロードが終わるとタイトル画面にもどるので、終了ボタンを押して終了します。

- ** 5 設定ファイルを書き換える

このままゲームをはじめてもいいのですが、日本語には厳しいフォントサイズが初期値なので


少し文字を大きくします。 マイドキュメントの下に、 OpenTTDフォルダが出来ているので、


その中にある openttd.cfg をメモ帳で開きます。


大体 21行目付近に、以下のような行があるはずです。


> |vbnet|


small_size = 8


medium_size = 10


large_size = 16


||< これをの数字を書き換えます。 >|vbnet|


small_size = 12


medium_size = 12


large_size = 16


||< 終わったら保存して終了します。 *\_* 6 再度起動する。 openttd.exeを起動してください。今度はさっきと違って、音楽は鳴るわ 踏切の音はするわで騒がしいタイトル画面になったはずです。 あとは、ゲームを始めるボタンを押して楽しむだけです！！ お疲れさまでした！ **_ トラブル集 ゲームを起動したら次のようなメッセージが出た Failed to find a graphics set. Please acquire a graphics set for OpenTTD. See section 4.1 of readme.txt OpenGFXが入ってません。 手順2,3をやり直してください。

