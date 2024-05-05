---
title: "windows-live-messenger-用いろいろパッチ"
date: "2023-05-21T12:29:00.000Z"
lastmod: "2023-05-27T07:04:00.000Z"
draft: false
series: []
authors: []
tags: []
categories: []
created: "2006-03-20"
NOTION_METADATA:
  object: "page"
  id: "37f88a04-70aa-43f0-ac02-c195761024cf"
  created_time: "2023-05-21T12:29:00.000Z"
  last_edited_time: "2023-05-27T07:04:00.000Z"
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
        start: "2006-03-20"
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
            content: "windows-live-messenger-用いろいろパッチ"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "windows-live-messenger-用いろいろパッチ"
          href: null
  url: "https://www.notion.so/windows-live-messenger-37f88a0470aa43f0ac02c1957610\
    24cf"
UPDATE_TIME: "2023-05-28T10:55:29.732Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">


発見しました。 って、発見って言うほどじゃないか＾＾；


ttp://apatch.ikhost.com/ （もうちょっと下のパッチをおすすめします）


A-Patch for Windows Live Messenger (build 29) っていうのがそうです。


＃長いので以下、Windows Live Messenger→WLM で。


＃MSNメッセンジャーの次のバージョンになる予定のもののβ版です。


これ、設定が妙に多くてよくわからないのですが…＾＾；


とりあえず、アレですよ。 いらなそうな項目を全部消してしまえばまぁすっきり。


…だけど。 なんかこのパッチ当てると終了時に不正終了でコケます。


まだ当てない方が幸せかも？


あと、 ２ページ目にある Disable MSN Spaces Contact Card Integration にチェックを


入れてしまうと、ヘルプ－ベータへの招待 が上手く動きません。


…終了時に不正終了されても広告とか消してすっきりさせたいので私は使いますが、


ちょっとまだこれ・・・日本語版対応というか、日本の人がこういうパッチ作るまで待つのが


正解なような気がするなぁ。


と思ったら、すでに日本語で動きそうなパッチが存在してました。


http://www.geocities.jp/msgr427/msn800566.html


ここのパッチなら、終了したときに不正な・・・とかならないのでおすすめです。


ちなみに、私は３つとも適用しましたが、別に広告消しだけとかでも適用可能なようですので


是非お試しを。 オフラインメッセージはなかなか便利ですよ＾＾ 相手がメッセンジャー7でも送れますし。


いろいろと文句言った甲斐があってか、UIも結構良くなってきてるし。


＃ え？WLMβの招待状が欲しい？ mixiあたりで、メッセージでも送っていただければ。


あと、この件とは関係ないものの、 WLMに変わってから、foobar2000のMSNプラグインが


上手く動いてないような気がします。曲名とかはちゃんと送れているみたいなんだけど、


なぜか、WLM上の表示が ” – 曲名” となってしまいます。 foo_msn と foo_msnmsgr7


どっちも同じ動きになります。 表示形式の設定になに入れても同じ表示になるし…


でも、Windows Media PlayerとかiTunesは普通に送れてるんだよねぇ…


何だろ、気のせい？（違）

