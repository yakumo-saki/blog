---
layout: post
title:  "2019/07/18 Release Note"
date:   2019-07-18 09:01:23 +0900
categories:
	- releasenote
---
# 雑感

* 雨降るっていうわりに降らなかった。
* 選挙いってきた。
* オリジン弁当の弁当をひさしぶりに食べた。ご飯で攻めてくるの、嫌いじゃない。

# Done

## 財団大不調

なんか重い。トゥートしても自分のTLに流れてこない。
結果、streamingが落ちてました。 Master自動追従してるのが悪いという前提ですが、原因は下記。 恐らく、次のバージョン 2.9.3rc1に含まれると思います。(glitch、本家問わず)

### 落ちた理由その1
.env.productionに `REDIS_PASSWORD=` （パスワードは空） が指定されている場合に、
redisへの接続に失敗するようです。
※ サーバーはパスワード不要と言っているのにパスワードが指定されている旨のエラーが表示される

解決策は簡単で、 `REDIS_PASSWORD=` をコメントアウトして下さい。（先頭に `#` を追加）

### 落ちた理由その2

https://github.com/glitch-soc/mastodon/commit/be053560e98dc9b702ee347518994e0b07914fae
このコミットとそれに続くコミットで、streamingとwebのデフォルトのLISTEN IPが127.0.0.1（ローカルのみ）になりそうです。 
リバースプロクシが別ホストにいるのであれば、.env.production に `BIND=0.0.0.0` を追加しておくと幸せになれます。
公式の docker-compose.yml の `command:` が変更されていますが、 .env.productionにセットしてしまえば
今の所 docker-compose.yml は変更なしでいけます。

※ streamingだけでなく、webも変わるのですが、 webは元々 docker-compose.yml で 0.0.0.0 をリッスンするように
オプションがついているので問題ないと思われます。
https://github.com/glitch-soc/mastodon/commit/c8a47595fb4a54af6a50a82bf0dbae4950586264
ここで BINDという環境変数を見るようになっているので、もしかするとBINDだけでいけるのかもしれません。
`bundle exec rails s -p 3000 -b '0.0.0.0'"` というcommandが指定されているので、恐らくこの設定は無視なのかなぁ･･･
どっちが強いのかなぁ･･･と言ったところです。

## writefreely試す

とりあえず動かせた。 リポジトリに入ってるdocker-compose.ymlが微妙に罠になってるような。
そんな気が致しました。 とりあえず導入記事書いた。 
https://qiita.com/yakumo/items/f187dc1d1e61c633cd8b

これで動いてるので、ここのblogの記事をそのままコピペして並行稼働させることにする。
（やっぱり記事がmarkdownで残ってるのは本当に安心できる。）

## 全VMのfstabを修正

設定完了。

- [x] noatimeつける
- [x] discardつける　(TRIM)

`noatime,discard,` を追加。

- [x] 10.1.0.50
- [x] 192.168.10.20
- [x] 192.168.10.120
- [x] 192.168.10.130
- [x] 192.168.10.140
- [x] 192.168.10.200
- [x] 192.168.10.201
- [x] 192.168.10.241
- [x] Vultr

## Bitwarden -> LastPassに戻した

LastPass Free でも機能制限が問題ないレベルなため。
Bitwarden、フォームに自動入力（本当に自動的に入力）してくれないのがつらかった。
でも正直、LastPassのUIに慣れてるから。っていう部分が大きい。

## writefreelyの記事

ここまで、slagと日付がおかしい。直す気0。
writefreelyは先頭の見出しをタイトルにするのでそこまでに他の要素があると
ランダムな文字列を作ってslagにしてくれる。

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
