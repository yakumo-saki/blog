---
layout: post
title:  "2019/11/18 Daily Release Note"
date:   2019-11-18 09:01:23 +0900
tags:
  - releasenote
---

## エージェントと話した。

エージェント氏はとてもいい人だった。本当にいい感じだが案件がちょっと…イマイチ。
と言うより数が足りないのでもう一箇所エージェントと話をすることにする。

## legoで Lets encrypt の証明書を取得する。

### 最初の取得

```
# 普通に実行する場合の例はあるので、シェルスクリプトとして実行する例

# legoは実行時のカレントディレクトリに .lego ディレクトリを作る為、事前にcdしておく必要がある。
cd /opt/lego

export CLOUDFLARE_EMAIL=<cloudflareのメールアドレス>
export CLOUDFLARE_API_KEY=1234567890abcdef1234567890abcdef12345

# wildcard証明書や、複数サブドメインが必要な場合は、 --domainsオプションを複数指定する
# 更新の場合は、末尾のrunをrenewに変更する。
./lego --dns cloudflare --domains example.com --domains *.example.com --email me@example.com --accept-tos run

# nginxをreloadして証明書を読み込み直す。
$ sudo /usr/sbin/nginx -s reload

# 注：
# sudoers に以下の記述をしてある
# execuser  ALL=NOPASSWD:/usr/sbin/nginx
```