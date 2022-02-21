---
type: post
title:  "2020/10/19 Daily Release Note"
date:   2020-10-19 09:01:23 +0900
tags:
  - releasenote
---

# お気持ち

* 朝からめちゃダルダルでなんかダメな一日だった

# 起きたこと

## 応用情報本番

* 合格発表がまさかの12/25。鬼かー
* 

## k8sのロギングをfilebeatに変更

* 公式でyaml公開されていてとても楽に導入できた。
* が、なぜかドキュメント上のyamlが存在しないバージョン 7.9.3 を指していてコケるのでそこだけは直した。
* PodのannotationsによるAutoDiscoveryは初期状態のyamlでは無効にされているので注意
* とりあえず、公開されているmodule、mysql, postgresql, redis, elasticsearch, kibanaのPodはすべてannotationsを追加した。
* ログがバッチリparseされていてよさそう。
* filebeatを入れてElasticsearch上にIndexが新規作成されると、自動的にaliasを作ってくれて、ILM（Index Lifecycle Management) まで設定してくれる。あとはkibanaでILMだけ調整すればおっけー。素敵。
* どうでもいいけど、logstashはもうdeprecated? バージョン 5.8.3とかで止まっていてJava 11だと動かないみたいな状態みたい

## リングフィット

* 新しい技を入れたら威力は強いけれども身体への負荷も強くてなかなか

# TODO 

* 衣替え
* 服を買いに行く
