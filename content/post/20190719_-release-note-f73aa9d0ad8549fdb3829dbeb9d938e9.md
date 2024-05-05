---
title: "20190719_-release-note"
date: "2023-05-21T12:45:00.000Z"
lastmod: "2023-05-27T02:48:00.000Z"
draft: false
series: []
authors: []
tags: []
categories: []
created: "2019-07-19"
NOTION_METADATA:
  object: "page"
  id: "f73aa9d0-ad85-49fd-b382-9dbeb9d938e9"
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
        start: "2019-07-19"
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
            content: "20190719_-release-note"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "20190719_-release-note"
          href: null
  url: "https://www.notion.so/20190719_-release-note-f73aa9d0ad8549fdb3829dbeb9d9\
    38e9"
UPDATE_TIME: "2023-05-28T06:13:00.945Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">


# 雑感

- 雨降るっていうわりに降らなかった。

# Done


## お洗濯


雨が続いてたから･･･


## writefreely のバックアップ


mysqldumpするだけ。簡単。 JenkinsのPipelineで sshGet する際にワイルドカードを使いたかったのに 書き方がよくわからなかったのが解決した。


```text
sshGet remote: remote, from: "/backup/myhost", into: 'p:\\backups\\', filterRegex: /\.gz$/, override: true
```


ただし、上の例でいう myhost がintoのディレクトリに作られてしまう p:¥backups¥myhost¥*.gz になってしまうのは解決できなかった。


## writefreelyの自動ビルド


とりあえずjenkinsのjobは作った。が、ビルドホストが2GBでは足りないようで･･･ 仕方ないのでzram-configを入れたら見事にsoft lockup。 今回おかしいのは、HWEカーネルに変えてもまだsoft lockupする。 とりあえずの対策として、 512MB メモリ追加。 あと HWE-edge(5.0.0カーネル)に変更してみた。 ･･･が、それでもなんか不安定なので、おとなしくzramを削除。


# TODO


## 職務経歴書

- [x] 外枠（プロジェクト名と日付）
- [ ] プロジェクトの中身 (2018)
- [ ] プロジェクトの中身 (2017)
- [ ] プロジェクトの中身 (2016)
- [ ] プロジェクトの中身 (2015)
- [ ] プロジェクトの中身 (2014)
- [ ] プロジェクトの中身 (2013)
- [ ] プロジェクトの中身 (2012)
- [ ] プロジェクトの中身 (2011)
- [ ] 自己PR

進捗ありません！


## 痩せる

- [ ] プールに行って泳ぐ
