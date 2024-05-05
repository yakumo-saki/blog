---
title: "openttdの序盤戦の戦略"
date: "2023-05-21T12:39:00.000Z"
lastmod: "2023-05-27T06:52:00.000Z"
draft: false
series: []
authors: []
tags: []
categories: []
created: "2011-03-03"
NOTION_METADATA:
  object: "page"
  id: "f8be84aa-8d99-4a7d-a7c1-5a03bc637874"
  created_time: "2023-05-21T12:39:00.000Z"
  last_edited_time: "2023-05-27T06:52:00.000Z"
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
        start: "2011-03-03"
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
            content: "openttdの序盤戦の戦略"
            link: null
          annotations:
            bold: false
            italic: false
            strikethrough: false
            underline: false
            code: false
            color: "default"
          plain_text: "openttdの序盤戦の戦略"
          href: null
  url: "https://www.notion.so/openttd-f8be84aa8d994a7da7c15a03bc637874"
UPDATE_TIME: "2023-05-28T07:55:29.196Z"

---
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.2/dist/katex.min.css" integrity="sha384-bYdxxUwYipFNohQlHt0bjN/LCpueqWz13HufFEV1SUatKs1cm4L6fFgCi1jT643X" crossorigin="anonymous">


布教用記事その２。


序盤で破綻すると、全然楽しめないので序盤をどう切り抜けるかを解説。


対象バージョンは、1.1.0 RC1 ですが、割とどのバージョンでも大丈夫でしょう。


新しいゲームからスタートしたと仮定するので、スタート時の年代は 1950年とします。


＃これ、割と議論が別れる所なのでこういうやり方もある程度に。。


＃あと、説明の都合上理屈はほとんど端折ってるので、ある程度慣れたらOpenTTD wikiを見ること。

- * 1 まずは、ゲーム開始直後に一時停止する

ゲームを開始すると時間が進んでいってしまいます。このゲーム、いきなり借金状態で


始まるので、なにもしないでいても利息を取られてしまいますし、ライバル会社の登場も


時間で制御されるので、まずは一時停止を。

- * 2 とりあえず、旅客運送をする

旅客運送は儲かります。って、今の日本の鉄道事情を見れば割とわかりますよね。


だからと言って、間違ってもいきなりバス運送をやり出したりしちゃいけません。儲かりませんから。


＃序盤でなければ話は別。バス運送自体は悪く無いです。

- ** ターゲットにする街を選ぶ

左上ツールバーの左から6番目のアイコンを押して、街リストを出します。


右上、人口 というボタンをクリックすると、人口順で並ぶので人口の多い順に並べます。


大体、人口1000人を超えた街が、手頃な近さ（下の画面参照）な所にあればその二つを


結んで開業します。


![](https://obs.maoh.company/yakumoblog/2018/07/openttd2-300x188.png)

- ** 線路のひきかたの原則（序盤戦）

・できるだけ曲げない。曲げる時は45度に曲げる。


列車が減速するのを防ぐ。加速が遅いので。


・できるだけ坂を登らせない


同じく減速を防ぐ為。このゲームではスピードが全て！


・序盤では、土地の上げ下げ・埋立・トンネルは基本的に使わない


お金的に厳しい。あと、序盤でこの手のツールを使って議会に嫌われると致命的に


なりかねない（駅が作れなくなった→他の駅に避けるお金がない）


序盤でたまったストレス感は中盤以降で発散しましょう。


＃上げ下げだろうが埋立だろうがやっても何とかなるくらいお金がたまる


・駅は幅２＊長さ４もあれば十分


幅２なのは、おそらく複線化が必要になるその時の為。最初から人口の多い街は


後でおもいっきり大きくなりがち。序盤では、８両編成（駅１マスに付き2両なので）の


列車を引っ張れるような汽車は存在しないのでこれでOK。


・駅の手前はできるだけ直線を確保


後半になって、駅のホームが足りなくなった時に駅を伸ばせる為。


駅＋手前の直線＝８マスもあれば大丈夫。


後半でも長い編成を走らせるとトラブルの元になるので8マスもあれば十分


＃線路の途中で壊れて道をふさいだとか、駅からはみ出たとか。。


・Xキーを使う


邪魔な木とかを隠してくれます。もう一度Xを押すと元に戻る。


・列車は９０度に曲がれない


意外と車庫を作ったときにハマリがちです。

- ** じゃあ、線路引いてみますか

![](https://obs.maoh.company/yakumoblog/2018/07/openttd3-300x181.png)


もう列車が走ってるのは気にしない。最低限必要なのは、


・駅（二つ）


・車庫（1個）


・線路


の３つ。おすすめの順序は、駅→線路→車庫（線路沿いに）。


このとき注意するのは、駅はできるだけ街の中心部に近づけること。


街の離れの駅には客が来ません。（駅の範囲云々の理屈は省略）

- ** じゃあ列車走らせますか

車庫をクリックすると、新規車両を買うダイアログがでるので、新規車両ボタンを押す。


列車を走らせるのに必要なのは、機関車と客車。 序盤のおすすめ編成は、


・Chaney社「記念祭」


・客車３つ


列車を買うと、車庫の中で待機状態になります。が。まだ目的地が決まっていないので出発しても


迷子になるだけです。というわけで、指令を作るには、


車庫の中の列車をクリック→ 列車ウィンドウ→”→”アイコンをクリックして


指令ウィンドウを開きます。


![](https://obs.maoh.company/yakumoblog/2018/07/openttd4.png)


開いたらあとは、右下の駅を選択をクリック→駅をクリック→画面上の駅をクリック


で指令を作れます。出来上がると以下のような感じになるはずです。


![](https://obs.maoh.company/yakumoblog/2018/07/openttd51.png)


この絵の指令２ですが、車庫にいって整備をする指令です。


作り方は、駅を選択ボタンの横にある▼ をクリック→近辺の電車庫へ行く です。


＃実はこれがなくてもある程度の期間で自動で整備しに行くようになっているんですが…


＃どうも妙な動きをすることが多いので指定しちゃった方が無難です。


これで列車を走らせればあとは眺めるているだけでお金を稼いでくれます！お疲れさまでした。


あ。何往復かするまでは小窓をひらきっぱなしにして監視しておくことをおすすめします。


全画面で監視したければ、小窓の中の目アイコンを CTRLを押しながらクリック。


そうすると列車に合わせて画面がスクロールします。


＃CTRLを押しながら〜 という操作は他でも割と使います。

- ** ちなみに。

この列車は£10000／年くらい稼いでくれました。線路代含めても５年もあれば元が取れる感じです。


実際は、両方の駅に客が100人以上溜まっている状態なので複線化して列車の本数を増やせばさらに


稼げそうな感じです。

