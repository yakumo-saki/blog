---
title: Windowsにjupyter notebookをセットアップしてみた（メモ）
author: 八雲
type: post
date: 2018-04-06T16:40:19+00:00
url: /2018/04/2599
tags:
  - 日記

---
## 前提

  * Windows Server 2016
  * anacondaで入れたpython 3.x系 (64bit)

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

    pip install mecab-python-windows
    

https://qiita.com/yukinoi/items/990b6933d9f21ba0fb43

## テスト用プログラム

    import MeCab
    
    mecab = MeCab.Tagger("-Ochasen")
    print(mecab.parse("本日は晴天なり"))
    
    本日  ホンジツ    本日  名詞-副詞可能     
    は   ハ   は   助詞-係助詞      
    晴天  セイテン    晴天  名詞-一般       
    なり  ナリ  なり  助動詞 文語・ナリ   基本形
    EOS
