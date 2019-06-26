---
title: メモ Apache1.3xx mod_php をWindowsで
author: 八雲
type: post
date: 2005-01-14T12:17:35+00:00
url: /2005/01/615
categories:
  - 日記

---
ついに本格的に新しい板を作ろうと…。
  
その前に自分の所でテストする環境作らなきゃね。というわけで
  
ちょっとがんばって作業をしてみたモノの…
  
やっぱりサーバーはLinuxに限りますか？ 資料が少なくてちょっと苦労する
  
羽目になってしまいましたとさ。 あまりに資料がないので自分でやって成功
  
した結果を公開しておけば、ちっとは社会に貢献できるかもしれない。

※ この文書はメモです。
  
Apache 1.3.x mod_php インストールメモ。 2005/01/15

基本にした文書：PHP日本語版マニュアル
  
http://www.php.net/manual/ja/install.windows.apache1.php

基本的には上の通り作業をすればOK。
  
具体的には…
  
１ Apacheをインストール
  
http://www.apache.jp/ からダウンロード。
  
1.3.x系列と2.0.x系列があるが、サーバーが1.3.x系列を使っているのでそれに
  
あわせた。 このメモを書いた時点でバージョンは 1.3.33
  
Apacheはインストーラが付いていてインストールが楽々。
  
このときは g:\bin\apache にインストール。サービスとしては動かさない
  
設定にした。

２ PHPをインストール
  
http://www.php.net/ のDownloads からダウンロード。
  
上の方にあってちょっと見づらいリンクだけど…
  
これも 4.3.x系列 と5.0.x系列があるけど、サーバーにあわせて 4.3.xを選択。
  
書いた時点でのバージョンは 4.3.10 だった。
  
こっちは、解凍して終わり。 Apache から CGIとして動かす分には。だけど。
  
このときは g:\bin\php4 に解凍した。

３ PHPのDLLのコピー
  
PHPをApacheのモジュールとして動かすときには、PHPを解凍したディレクトリの
  
php4ts.lib と php4ts.dll をPHPを解凍したディレクトリ\sapi にコピーする。
  
＃%SystemRoot%\System32 でも良いみたいだけど…気持ち悪いと思う。

４ Apache の httpd.conf 書き換え
  
PHPモジュールを使うようにするための作業。
  
追加 LoadModule php4_module g:/bin/php4/sapi/php4apache.dll
  
追加 AddModule mod_php4.c
  
追加 AddType application/x-httpd-php .php .phtml
  
追加 AddType application/x-httpd-php-source .phps
  
LoadModuleのパスはPHPを解凍した場所に書き替えること。
  
似たような事が書いてある所の最後に追加すればＯＫ。

５ PHP.ini をApacheのディレクトリにコピー
  
%SystemRoot%（要するにc:\windows）に置いても可。
  
探す順番は Apacheのディレクトリ → ％SystemRoot% な模様。

これでApacheを再起動させれば、PHPが動作可能になっているはず。
  
私の場合はPostgreSQLを使いたかったので、さらに以下の作業をした。
  
６ PHP.ini を書き換えて PostgreSQLプラグインを読ませる。
  
PHP.ini内の以下を書き換え。
  
extension_dir="G:\bin\php4\extensions"
  
extension=php_pgsql.dll
  
例によって、パスは適時読み替えのこと。
  
二行目はセミコロン（；） でコメントアウトされているのを外すだけ。
  
書き換え終わったらApacheを再起動するのを忘れずに。