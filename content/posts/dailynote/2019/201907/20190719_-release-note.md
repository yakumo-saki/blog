---
layout: post
title:  "2019/07/19 Release Note"
date:   2019-07-19 09:01:23 +0900
tags:
  - releasenote
---

# 雑感

* 雨降るっていうわりに降らなかった。

# Done

## お洗濯

雨が続いてたから･･･

## writefreely のバックアップ

mysqldumpするだけ。簡単。
JenkinsのPipelineで sshGet する際にワイルドカードを使いたかったのに
書き方がよくわからなかったのが解決した。

```
sshGet remote: remote, from: "/backup/myhost", into: 'p:\\backups\\', filterRegex: /\.gz$/, override: true
```

ただし、上の例でいう myhost がintoのディレクトリに作られてしまう p:¥backups¥myhost¥*.gz になってしまうのは解決できなかった。

## writefreelyの自動ビルド

とりあえずjenkinsのjobは作った。が、ビルドホストが2GBでは足りないようで･･･
仕方ないのでzram-configを入れたら見事にsoft lockup。 今回おかしいのは、HWEカーネルに変えてもまだsoft lockupする。
とりあえずの対策として、 512MB メモリ追加。 あと HWE-edge(5.0.0カーネル)に変更してみた。
･･･が、それでもなんか不安定なので、おとなしくzramを削除。

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

