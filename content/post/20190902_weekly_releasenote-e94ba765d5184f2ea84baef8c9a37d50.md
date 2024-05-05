---
title: "20190902_weekly_releasenote"
date: "2023-05-21T12:45:00.000Z"
lastmod: "2023-05-27T02:48:00.000Z"
draft: false
series: []
authors: []
tags: []
categories: []
created: "2019-09-02"
NOTION_METADATA:
  object: "page"
  id: "e94ba765-d518-4f2e-a84b-aef8c9a37d50"
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
        start: "2019-09-02"
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
            content: "20190902_weekly_releasenote"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "20190902_weekly_releasenote"
          href: null
  url: "https://www.notion.so/20190902_weekly_releasenote-e94ba765d5184f2ea84baef\
    8c9a37d50"
UPDATE_TIME: "2023-05-28T06:12:18.505Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">


# 雑感

- そろそろ転職活動しないとヤバい。

## 9/2


### dockbix-agent に接続


k8s外のzabbix-serverからk8s上のagentに接続するってどうすれば･･･ serviceを定義すれば繋がるだろうけれども、daemonsetに対してservice定義するってなんかとっても違う気がする。


結局Ansibleを誤爆してしまい、ワーカーに直接zabbix-agentを入れることに。


## 9/3


### zabbixサーバーの移転


Jetson Nanoがzabbixサーバーやってるのはおかしい（色んな意味で）ので、余っていたRaspberryPi 3Bに移動した。 バージョンが違っていて辛かった。 (arm64はVer 4.2、armは4.0が最新) PostgreSQLに移行しようなんて思ったせいでさらに時間がかかり･･･結局mysqlのママにしたという。 arm64等では 4.2がでているけれども、armは4.0で止まっている。DBのschemaが違って怒られたので、 dbversionを無理矢理4000000に書き換えて動かした。


### kanikoを使ったイメージのビルド


メモリを2.5Giほど割り当てると成功することが分かった。(テストはWriteFreelyのイメージで行った） DockerHubへのアップロードも成功しているようだ（動作は見ていない）


### Misskey自動アップグレード


Mastodonのを流用すれば楽だろうと思ったら（事実楽な部分は多い。例えば、Misskeyは起動時に自動的にdb:migrateされるとか） ･･･見事にハマっている。misskeyのバージョンは 11.x.y だけれども、 11.9.1 > 11.31.4 と判定されてしまって、 見事に失敗した。 明日何か考えよう。


### オイルヒーター


粗大ゴミに出した。


## 9/4


### Raspberry Pi 3B arm64化


Ubuntu 18.04LTS (arm64) を動かすことでaarch64モードで実行できる事を知ったので切り替え。 これが大変だった。 Qiitaの手順や、公式の手順でもUSB-SSDから起動することができない。 色々と試したが、どうにもらちがあかないので諦めてmicroSDカードから起動させて、 cmdline.txt の rootfs の指定をUSB-SSDにすることで、実質SSDから起動するようにした。


### ラズパイのヒートシンク


純正ケースに入っているんだけれども、swapなしの状態でMysqlのdumpをロードしたらそれはそれは･･･ ひどい目にあった。ラズパイの画面に温度計が表示されるのは初めてみた。 即Amazonで注文したけれども届くのは金曜日。あーあ。


## 9/5


### zabbixのアラートスクリプト類のレストア


この部分、 githubに上げてる docker-compose に反映した。


### misskey自動アップグレード


毎度毎度 sed のアレを組み立てるのはめんどい。 https://qiita.com/yakumo/items/46fef0bca043bd350e2b


### ものほし竿増設


洗濯物を溜めると足りなかったので買ってきた。お値段500円未満。おねだん以上


## 9/6


### kaniko Mastodonに適用


適用した。


### 書類仕事


電気通信事業者、登録すると一覧が公表されるとかなんとからしいので保留。


# TODO


## k8sに移動したことによって壊れている単純なジョブの修正

- [x] バックアップ
- [x] テストインスタンスバックアップ
- [x] misskeyインスタンスバックアップ
- [x] 財団バックアップ
- [ ] 統計情報取得（DB部分）
- [x] sidekiq統計取得
- [x] 週次メンテナンスジョブ
- [x] 月次メンテナンスジョブ

## k8sの仕組みでオートデプロイ再構築

- [ ] fastladder
- [ ] writefreely
- [x] misskey
- [x] テストインスタンス
- [x] 本番インスタンス

## writefreely への文書コピー


本当にコピー


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
