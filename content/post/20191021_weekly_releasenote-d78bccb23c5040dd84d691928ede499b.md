---
title: "20191021_weekly_releasenote"
date: "2023-05-21T12:45:00.000Z"
lastmod: "2023-05-27T02:48:00.000Z"
draft: false
series: []
authors: []
tags: []
categories: []
created: "2019-10-21"
NOTION_METADATA:
  object: "page"
  id: "d78bccb2-3c50-40dd-84d6-91928ede499b"
  created_time: "2023-05-21T12:45:00.000Z"
  last_edited_time: "2023-05-27T02:48:00.000Z"
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
        start: "2019-10-21"
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
            content: "20191021_weekly_releasenote"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "20191021_weekly_releasenote"
          href: null
  url: "https://www.notion.so/20191021_weekly_releasenote-d78bccb23c5040dd84d6919\
    28ede499b"
UPDATE_TIME: "2023-05-28T06:11:08.543Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">


# 雑感

- 。。。

## 10/21

- FreeNASにPVを移動していく。
- ちまちまと移動しまくった。
- 最後、財団のDBを飛ばしかけてかなり焦った。PVCにprotectionがあってもミスるときはミスる。
- Minio以外はなんとか移転した。

## 10/22

- 天皇陛下即位の日。万歳するときは手のひらが内側なんだということを学んだ。
- MinioのPVを移動。 rsyncでnfs -> nfs に転送してminio podを再起動させて完了とした。
- これだと、rsyncがスタートした後のデータは恐らく欠落する。
- 正しくやるなら、minioを2個立ち上げて旧→新でコピーしてminioを切り替え、再度旧→新にコピーすればいいはず。
- なるほど、ファイルがimmutableだとものすごく楽。
- と言いつつ、転送先ディレクトリを間違えて3回くらい転送してる。

## 10/23

- mstdn.jpがご機嫌斜めらしいので、Sidekiqのプロセスを増やした。
- 実際は、kustomizeでdeploymentのコンテナを追加できるのか試したかった。

## 10/24

- Autoアレのownedがコケていたの修正
- Raspberry Pi のバックアップがコケていたの修正
- vyosのお試しを始めた。
- Sophos UTM 9 をちょっと試したがコレは… UIがびみょ。

## 10/25

- VyOSの設定をかきかき。
- フレッツのセッションは2本貼れるのでそれでテスト環境を作ってテスト。良い感じ

## 10/26

- 池ハロみた。楽しかった
- VyOSのファイアウォール回りの設定書き直し。zoneを定義して、zone-policyでFWを適用した方がスッキリしたため
- VyOSでRTX1200を置き換えた。
- [x] DS-Lite
- [x] Intra LAN seg DHCP
- [x] Server LAN seg DHCP
- [x] Intra - Server LAN 疎通確認
- [x] Intra - Server LAN NAT
- [x] Firewall設定 v4
- [ ] Firewall設定 v6
- [ ] IPv6 bridge
- IPv6回りは一旦ペンディング。今現状無くても困らない。
- 稼働させて、一通り上手くいっているようだが、なぜか家庭内ネットワークがタイムアウトする。
- ファイアウォールに引っかかっているようでもないし…
- よく見ると、サーバーセグメントもネットワークが止まるような動きをしている。
- と思ったら、無線LAN APのWANポートに入れるLANケーブルがLANに刺さっていた。
- 家庭LANとサーバーLANセグメントのNATをやめてファイアウォールで制御するようにした。
- ケーブルを差し替えたが、状況は変わらない。なんだこれは…諦めて寝る

## 10/27

- 朝起きてみると、ネットワークは普通に戻っていた。
- 無線LAN APの接続間違いのせいでネットワークループでも起きていたんだろうか？
- とりあえず、体感でネットワークが少し軽くなったような気がする。
- IPアドレスに依存するジョブの修正をした
- zabbixの監視回りの修正（FreeNASのI/O負荷、VyOSの監視）
- 統計情報取得修正
- VSCodeでArduinoの書込を試した。普通に書けた。よい。
- server info 書き終わり
- https://d.yakumo.dev/2019/09/undefinedtech-20191020-server-build-info/

# TODO


## k8sに移動したことによって壊れている単純なジョブの修正

- [x] バックアップ
- [x] テストインスタンスバックアップ
- [x] misskeyインスタンスバックアップ
- [x] 財団バックアップ
- [x] 統計情報取得（DB部分）
- [x] sidekiq統計取得
- [x] 週次メンテナンスジョブ
- [x] 月次メンテナンスジョブ

done。統計情報取得はkubemasterに任せた。


## k8sの仕組みでオートデプロイ再構築

- [ ] fastladder
- [ ] writefreely
- [x] misskey
- [x] テストインスタンス
- [x] 本番インスタンス

## 職務経歴書

- [x] 外枠（プロジェクト名と日付）
- [ ] フォーマット統一
- [ ] プロジェクトの中身 (2018)
- [ ] プロジェクトの中身 (2017)
- [ ] プロジェクトの中身 (2016)
- [ ] プロジェクトの中身 (2015)
- [ ] プロジェクトの中身 (2014)
- [ ] プロジェクトの中身 (2013)
- [ ] プロジェクトの中身 (2012)
- [ ] プロジェクトの中身 (2011)
- [x] プロジェクトの中身 (2011より前)
- [ ] 自己PR

進捗ありません！


## 痩せる

- [ ] プールに行って泳ぐ

## 電気通信事業者


電気通信事業者、登録すると一覧が公表されるとかなんとからしいので保留。

