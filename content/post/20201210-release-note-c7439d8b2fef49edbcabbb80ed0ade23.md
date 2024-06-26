---
title: "20201210-release-note"
date: "2023-05-21T13:42:00.000Z"
lastmod: "2023-05-27T02:47:00.000Z"
draft: false
series: []
authors: []
tags: []
categories: []
created: "2020-12-10"
NOTION_METADATA:
  object: "page"
  id: "c7439d8b-2fef-49ed-bcab-bb80ed0ade23"
  created_time: "2023-05-21T13:42:00.000Z"
  last_edited_time: "2023-05-27T02:47:00.000Z"
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
        start: "2020-12-10"
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
            content: "20201210-release-note"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "20201210-release-note"
          href: null
  url: "https://www.notion.so/20201210-release-note-c7439d8b2fef49edbcabbb80ed0ad\
    e23"
UPDATE_TIME: "2023-05-28T06:03:03.561Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">


# 起きたこと

- 昼間は温かいのに夜寒い！

## OpenTTD


割と設定がいい感じに行ったので覚書


### ゲームオプション

- 行き先設定あり、非対称
- 災害なし
- 初期の借金 500000ポンドまで
- 1900年スタート（1915年くらいにするべきかもしれない。鉄道までが遠かった）
- 第一次産業の出資可能（出資ではなく調査まで）
- 一つの町の中で産業の重複許可
- 飛行機の速度 1/1

### newgrf

- BSIP (経済拡張)
- 1000 x 1000 温帯マップ
- BaseCost Mod
- UK Road vehicle
- Simple City builder (乗客 5 、郵便物 5、商品 5 / 1000人、ゴールは5万人)
- av8 airplane

### ポイント


### Simple City builder周り

- 品物ごとに有効無効のチェックがあるが、機能していないので数量を0にしないとダメ
- シナリオを作って使用する場合は、シナリオエディタに入る時点で設定を済ませないとダメ
- シナリオをマルチでプレイする場合は、一旦シングルでシナリオをスタートさせて、CityBuilderが機能しているかどうか（Cityに .: City :. 表示がされているかチェック）して、すぐにセーブし、そのデータをロードしてマルチプレイしないとCity Builderが効かない
- マルチプレイ時(?) ホストになるプレイヤーに毎月、HQを立てろというメッセージがでるが無視する必要がある。

なんでこんなにバグバグなのを使うのかという感じだけれども、これが 2017年更新で一番新しい…


### BaseCost Mod 周り


ゲームバランスが標準だとぬるめなので厳しい方向に調整していく。

- 鉄道・船・飛行機の維持費4倍。後半、全部鉄道でOKになるのが嫌なので、バス・トラックを優遇。船、飛行機はなんだかんだで収益力が高いので同じく4倍。
- 土地の上げ下げ32k倍。 これは土地の上げ下げを普通の値段にすると後半は全部更地にしていけばいい。っていう状態になるので、いっそのこと土地の上げ下げができない値段にしてしまえ。という設定

### uk road vehicle


幅広い年代のバス、トラック、トラムが入ったnewgrf。1900年スタートだと鉄道が使えない（1926年まで鉄道は使えない） ので、これが入っていないとにっちもさっちもいかなくなる。バランスが崩れるような車両は入っていないので、安心して導入できる。


### BSIP


経済拡張。発電等で生産効率が変わるようになる。 新しい産業は特にない。 が。。これを入れて1900年スタートにしてしまうと運べてない産業がバタバタと閉鎖してしまう問題がある。 オプションの発電所をすべての町に作る。にチェックを入れておくべきだった。 Production Rateが0%になってしまうと救えない（材料をいくら入れても生産できないし、そのうち閉鎖する）


### まとめ


1900年〜1920年くらいまでの間、トラムを使わざるを得ない状況になる（馬車の旅客運送が1904年くらいにできなくなり、バスも登場しないため）が、これが意外と面白かった。 鉄道とトラムの違いがあったり（Uターンさせる場所を確保しないとトラムはターンできないとか）、速度が違うバスと入り混じって渋滞が起きたり、2マス連結のトラムがあったり、新鮮だった。


何より、道路運送しかないので隣町が非常に遠く感じる、時速35kmとかなので本当におっそい。輸送量もほどほどなので台数が増えるので管理をある程度しないと混乱する。


1920年くらいからバスが35km/hくらい出るようになるのでトラムが不要というかほぼ不要になるが、既に引いてしまったトラムどうするの？という問題に直面するようになる。トラムは道路に併設できるが、あと数年で鉄道も使えるようになるので、専用軌道にしてあれば鉄道化が楽になるが、鉄道は維持費が高くなっているので変なところに引くと赤字になる。


1930年くらいまでプレイしたが、トラムを鉄道に置き換えるか、あえて問題を先送りするかという葛藤がおきて面白い。（トラムは2000年くらいまで使えるが性能が上がらず、バス、トラックに負ける） マルチプレイしたが、おおよそイーブンの状態なので、来週続きをプレイする予定。


## リングフィット

- なし

# TODO

- [x] EnvBoyにmDNS機能を追加する
- [x] chinachuをk8sに乗せる
- [x] サーバーのファン交換
- [x] lambrollのAURパッケージを作る
- [ ] サーバーのファン交換(12cm)
- [ ] ESP32のBluetooth回りを触ってみる
