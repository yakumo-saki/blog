---
title: "windowsにjupyter-notebookをセットアップしてみた（メモ）"
date: "2023-05-21T12:44:00.000Z"
lastmod: "2023-05-27T06:46:00.000Z"
draft: false
series: []
authors: []
tags: []
categories: []
created: "2018-04-07"
NOTION_METADATA:
  object: "page"
  id: "c88044b1-dc69-4bb7-9eaf-9e8fa97e5ab0"
  created_time: "2023-05-21T12:44:00.000Z"
  last_edited_time: "2023-05-27T06:46:00.000Z"
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
        start: "2018-04-07"
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
            content: "windowsにjupyter-notebookをセットアップしてみた（メモ）"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "windowsにjupyter-notebookをセットアップしてみた（メモ）"
          href: null
  url: "https://www.notion.so/windows-jupyter-notebook-c88044b1dc694bb79eaf9e8fa9\
    7e5ab0"
UPDATE_TIME: "2023-05-28T06:20:45.199Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">


## 前提

- Windows Server 2016
- anacondaで入れたpython 3.x系 (64bit)

## 手順


### mecabインストール


https://github.com/ikegami-yukino/mecab/releases


mecab-0.996-64.exe をダウンロードしてインストール。


### 環境変数設定


システム環境変数に以下を設定。


path に c:¥Program Files¥Mecab¥bin を追加


MECABRC （新規追加）に c:¥Program Files¥Mecab¥etc¥mecabrc を設定


### mecab pythonバインディングをインストール


anaconda prompt から


```text
pip install mecab-python-windows
```


https://qiita.com/yukinoi/items/990b6933d9f21ba0fb43


## テスト用プログラム


```text
import MeCab

mecab = MeCab.Tagger("-Ochasen")
print(mecab.parse("本日は晴天なり"))

本日  ホンジツ    本日  名詞-副詞可能
は   ハ   は   助詞-係助詞
晴天  セイテン    晴天  名詞-一般
なり  ナリ  なり  助動詞 文語・ナリ   基本形
EOS
```

