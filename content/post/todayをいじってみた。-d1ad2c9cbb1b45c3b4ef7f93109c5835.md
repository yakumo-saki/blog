---
title: "todayをいじってみた。"
date: "2023-05-21T12:28:00.000Z"
lastmod: "2023-05-27T07:05:00.000Z"
draft: false
series: []
authors: []
tags: []
categories: []
created: "2006-02-07"
NOTION_METADATA:
  object: "page"
  id: "d1ad2c9c-bb1b-45c3-b4ef-7f93109c5835"
  created_time: "2023-05-21T12:28:00.000Z"
  last_edited_time: "2023-05-27T07:05:00.000Z"
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
        start: "2006-02-07"
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
            content: "todayをいじってみた。"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "todayをいじってみた。"
          href: null
  url: "https://www.notion.so/today-d1ad2c9cbb1b45c3b4ef7f93109c5835"
UPDATE_TIME: "2023-05-28T10:58:01.724Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">


は、良いんだけど… マナーとか安全運転とか伝言とかのケータイとしての機能を制御する部分の順番が変えられない。 でも、mixiのW-ZERO3コミュニティのToday自慢トピにはこの部分が隠れてたり下の方に移動してたりする投稿があってなんか悔しいのでいろいろと試行錯誤してみた。


試行錯誤その１ TodayHelperを使ってみた。 TodayHelperの画面上は、順番を変えることが出来ているように見えるが 実際のTodayに反映されない。 けど、二つほどわかった。 ・動かせないあのバーは”モード設定” っていうらしい。 ・システム属性みたいなのがついてるみたい。 （名前がダブルクォートで囲まれてたから）


試行錯誤その２ レジストリをごちょごちょしてみた。 Todayのアイテムの関係のレジストリの位置を調べてみた。（ぐぐっただけよ＾＾；） HKLM 以下にコントロールパネルのTodayに出てくる名前のフォルダ（っていうの？）で設定が記録されている。 で、普通にコントロールパネルで設定出来る項目と、出来ない”モード設定”の違いは… ありました。 Typeというキーの値が違います。 変更して再起動してみると… 出来た！


![](//www.ziomatrix.org/wp-content/uploads/2006/02/SCRN0002.jpg)


というわけでまとめ。 W-ZERO3 のTodayにあるマナーモードとか書いてあるバーを移動できるようにする方法


HKEY_LOCAL_MACHINE&#8221;モード設定” にある Type というキーの値を “4” -> “6” に変更する。 変更後、再起動する。 ただし、調子に乗ってモード設定を見えなくすると、通知領域に出る電波状態アイコンが 出なくなります。 けど、右上のランプはちゃんと動いてるようだし、着信も出来るみたい なので、これはこれで良いのかも。 私はマナーモードに切り替えとか使うので残しますが… このバーの見た目、何とかならないのかねぇ。 あと、左の方が無駄にあいてるのも。 そこにバッテリーの残量と使用時間を表示してくれたら、通知領域のバッテリインジケータ を消しても良いと思ってるのに。 （通知領域にアイコンがいっぱいで…） 次は、VGA化してみたいなぁ。

