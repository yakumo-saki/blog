---
title: Windows XP 64bit 版の uxtheme patch
author: 八雲
type: post
date: 2005-12-23T13:18:01+00:00
url: /2005/12/688
tags:
  - 日記

---
http://www.anti-tgtsoft.com/repository/uxtheme/
  
今のところここにあります。
  
WindowsX製 Uxtheme Multi Patcher 4.0 は動作してくれませんでした。

で、上のリポジトリから64bit版をダウンロードしてきて、解凍。
  
そうすると、 Uxtheme.dll と uxtheme.dl_ があるのでそれを
  
%windir%以下のファイルと置き換える。
  
ただし、普通に起動してる時にこれをしようとすると、Windows File Protectに
  
引っかかるかもしれないので、セーフモードで行う。
  
置き換え対象は以下の通り
  
c:\windows\system32\uxtheme.dll
  
c:\windows\syswow64\uxtheme.dll
  
c:\windows\syswow64\uxtheme.dl_
  
一つだけ、置き換えに失敗する場所があるが、それは置き換える先のuxtheme.dll
  
の名前を変更して、それからコピーすればOK。

…ちなみに、どっちか忘れると64bitなプログラムだけテーマが使えるようになった
  
りして、結構間抜けなことになるｗ
  
あ、そうそう。これを入れると一部英語になってしまいます。
  
実害は全然ありませんが＾＾；
