---
title: blogをhexoに引っ越しました。
author: 八雲
type: post
date: 2019-06-26T17:18:53+09:00
tags:
  - 日記
---
Wordpressの管理画面に入るのがおっくうで、日記をまったく書かなくなってしまったので、  
hexoに移行しました。思ったより簡単でした…   
と言いたいところですが、そうも行かず。 ハマりポイントを列挙しておきます  

## Wordpress-hugo-exporter でwordpressサイトを markdownに出力

Hugoで動かそうと思ったけどなんかイマイチ上手く行かないので、hugo形式のmarkdownを  
hexo形式に変換した。やったことは以下

### yyyy-mm-dd-title.md を yyyymmdd_title.md にリネーム

```
for orgfile in `find . -name "*.md" -type f`; do
	NEWFILE=`echo ${orgfile} | sed 's/\([0-9]\{4,4\}\)-\([0-9][0-9]\)-\([0-9][0-9]\)-/\1\2\3_/g'`
	mv $orgfile $NEWFILE
	echo $NEWFILE
done
```

### 日本語タイトル（ファイル名）だと年月日が上手く切り出せないのでファイル名変更

`20190601_日本語.md` みたいな形だと日付が取得できない。これ、issue書くべきなのではないだろうか。
仕方ないので、既存のものは全て `yyyymmdd__タイトル` （アンスコが二つ）にリネームした。   
permalinkにしか影響がないのでまぁ、よいでしょう。

```
for orgfile in `find . -name "*.md" -type f`; do
	basename=`basename $orgfile`
	NEWFILE=`dirname $orgfile`/`echo ${basename:0:8}`__`echo ${basename:9}`
	mv $orgfile $NEWFILE
	echo $NEWFILE
done
```

### 1ディレクトリにmarkdownがあると大変なので、分割

yyyymmのディレクトリを掘って、そこに入れるようにした。

### Wordpressでカテゴリを階層化していると categories: ["a", "b", "c"] になっていて困ったことになったので全てタグ扱いにした。

```
for orgfile in `find . -name "*.md" -type f`; do
sed -i -e "s/categories:/tags:/g" $orgfile
echo $orgfile
done
``` 

## まとめ

普通にエディタで書けるようになって楽になった。WordpressでもAPI対応の編集ツール使えば同じ事はできたかもしれないが、  
有償だったり大変だったりで、結局これで良いのでは無いかと思っている。

なお、内容はgithubにあげて、netlifyでホストして貰っている。楽な時代で良い。
