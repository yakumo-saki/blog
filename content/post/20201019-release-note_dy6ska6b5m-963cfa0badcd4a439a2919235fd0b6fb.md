---
title: "20201019-release-note_dy6ska6b5m"
date: "2023-05-21T12:45:00.000Z"
lastmod: "2023-05-27T02:48:00.000Z"
draft: false
series: []
authors: []
tags: []
categories: []
created: "2020-10-19"
NOTION_METADATA:
  object: "page"
  id: "963cfa0b-adcd-4a43-9a29-19235fd0b6fb"
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
        start: "2020-10-19"
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
            content: "20201019-release-note_dy6ska6b5m"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "20201019-release-note_dy6ska6b5m"
          href: null
  url: "https://www.notion.so/20201019-release-note_dy6ska6b5m-963cfa0badcd4a439a\
    2919235fd0b6fb"
UPDATE_TIME: "2023-05-28T06:09:29.649Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">


# お気持ち

- 朝からめちゃダルダルでなんかダメな一日だった

# 起きたこと


## 応用情報本番

- 合格発表がまさかの12/25。鬼かー
- 

## k8sのロギングをfilebeatに変更

- 公式でyaml公開されていてとても楽に導入できた。
- が、なぜかドキュメント上のyamlが存在しないバージョン 7.9.3 を指していてコケるのでそこだけは直した。
- PodのannotationsによるAutoDiscoveryは初期状態のyamlでは無効にされているので注意
- とりあえず、公開されているmodule、mysql, postgresql, redis, elasticsearch, kibanaのPodはすべてannotationsを追加した。
- ログがバッチリparseされていてよさそう。
- filebeatを入れてElasticsearch上にIndexが新規作成されると、自動的にaliasを作ってくれて、ILM（Index Lifecycle Management) まで設定してくれる。あとはkibanaでILMだけ調整すればおっけー。素敵。
- どうでもいいけど、logstashはもうdeprecated? バージョン 5.8.3とかで止まっていてJava 11だと動かないみたいな状態みたい

## リングフィット

- 新しい技を入れたら威力は強いけれども身体への負荷も強くてなかなか

# TODO

- 衣替え
- 服を買いに行く
