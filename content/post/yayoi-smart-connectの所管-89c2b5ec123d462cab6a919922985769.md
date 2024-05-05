---
title: "yayoi-smart-connectの所管"
date: "2023-05-21T12:41:00.000Z"
lastmod: "2023-05-27T06:48:00.000Z"
draft: false
series: []
authors: []
tags: []
categories: []
created: "2014-07-08"
NOTION_METADATA:
  object: "page"
  id: "89c2b5ec-123d-462c-ab6a-919922985769"
  created_time: "2023-05-21T12:41:00.000Z"
  last_edited_time: "2023-05-27T06:48:00.000Z"
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
        start: "2014-07-08"
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
            content: "yayoi-smart-connectの所管"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "yayoi-smart-connectの所管"
          href: null
  url: "https://www.notion.so/yayoi-smart-connect-89c2b5ec123d462cab6a919922985769"
UPDATE_TIME: "2023-05-28T06:43:44.863Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">

- * 導入部

弥生、取引の自動取り込みサービス「YAYOI SMART CONNECT」を発表


http://ascii.jp/elem/000/000/911/911919/


なんというか、待ってました。やっとやってくれた！という感じ。


ちょっとテンション上がったので、妄想含めて語ってみる。


これは個人向け（法人も行けるかもしれない）の会計ソフトとしては大きな進化だと思う。

- * 革新的だと思ったポイントをつらつら書いてみる

・会計データもクラウドでいいじゃない。


・自動的にデータ連携できるものはデータ連携して楽にしよう。


・弥生が入力されたデータを解析して自動仕分け（ってなってくれないかなぁ）


正直、Money Forwardの後追い的な部分はあると思うけれども、


これを弥生がやることに意味がある。弥生はこの手のソフトではNo1だから。


＃シェアNo1＝ユーザー数多い。後述。

- * 期待その１　データの自動取り込み（銀行・クレジットカード連携）

現状のやよいの青色申告でもMoney Lookというソフトと連携すれば


１は可能…まぁ可能。だが自動ではなく、取り込みの操作は手動だし、いちいちCSVを


出力して取り込みみたいな操作が必要で正直、手入力の方が早い。これが、オンライン版では


おそらく自動で毎日取り込みみたいな形になるはず。


＃Money Forwardがそうなってる。有料会員限定だけれども。

- * 期待その２　振込先、品名データからの自動費目入力

２はオンラインならではの機能。オンラインで自動連携をする人が増えれば


それだけ支払先、品名とそれに対する費目のデータが弥生に集まる。そうすると、自動的に


正しい（かもしれない）費目を提案できる可能性が上がる。


＃同じものにお金を使っても人によってどの費目にするかはブレがあるんだけれども、税務署的には


＃費目が「税務署の思ってる費目」と多少違ってても構いません。その代わり同じものは同じ費目に


＃割り当ててください。というスタンスだろうと考えられるので提案される費目が正確であるかどうかは


＃あまり重要ではないと思われる。なぜかといえば、（一部費目を除いて）費目が多少間違っていたとしても


＃税金の計算上はあまり意味がない。費目がなんであれ経費は経費で収入から差し引くものだからである。


＃ただし、企業向けとなると色々問題が起きる可能性があるので、費目の提案は削られたりするかも。


＃もしくは、以前に入力された内容と類似してるときだけ自動入力。とか。


＃個人向けの場合は、「入力された内容と類似」の判定をユーザーの境界を超えてやってくれないかなぁと


＃期待してる。だって、費目の選択が正しいのかどうか毎度頭を悩ませるし。


＃良くも悪くも、集合知（集合愚？）「赤信号、みんなで渡ればなんとやら」

- * 期待その３　帳簿の保存

…これは妄想だけれど、クラウド上に保存されたデータが帳簿のデジタル保存と認められれば、わざわざ


帳簿を紙に印刷して残す。っていう手間が省けて嬉しいなぁ…と思ったりする。


まぁ、認められたとしてもデータは紙で残すことになると思いますが。


＃だって、帳簿の保存年限（７年？）の間、参照できるように契約を解除できなくなっちゃう。


＃サービス終了とかされたら目も当てられないし。弥生だから、会社が潰れない限りないと思うけど。

- * その他の期待

Twitter経由で経費入力ができるとか（これはできるようにすると書いてある）、


今みたいにいちいち専用のソフトを起動して、経費入力して…みたいなハードルの高さがだいぶ下がる


ので、まとめて入力じゃなくてちょこちょこ入力するようになる。。んじゃないかなぁ


＃ええ、今年の経費まだ入力してませんよ。


それでなくても、Webからログインしてちょこちょこ入力できるなら今よりだいぶ良い。


＃ソフトの起動に時間かかるんです。。


今年の秋には青色申告オンラインもサービスインみたいなのでもうそっちに移行しようかな…


サービスインの時にデータ移行機能がついていますように。。。


—


この記事は長風呂したせいで寝れなくなった勢いで書かれた。


正直、今から寝ると起きたら午後になりそうなので寝るかどうか迷っている。

