---
title: Windows7 に Daemon-Toolsを入れる件（成功）
author: 八雲
type: post
date: 2009-05-01T14:55:59+00:00
url: /2009/05/1298
categories:
  - 日記

---
メモ代わりに書いておく。
  
Windows7にDaemonToolsをインストールしようとしたときに、
  
SPTDのインストールで何度も再起動を要求される場合の対処法。

考えられるパターン
  
・VistaからのアップグレードでWindows7を入れた
  
・アップグレード前にDaemon-Toolsを入れていた。
  
・もしくは古いバージョンを入れようとした。

１ レジストリ削除
  
レジストリエディタを起動して以下の場所へGO
  
HKEY\_LOCAL\_MACHINE\SYSTEM\CurrentControlSet\Services\sptd
  
とりあえず、存在するキーを全部削除。

２ 再起動
  
３ c:\windows\system32\drivers\stpd.sys を削除
  
４ 最新バージョン（Windows7対応版）のDaemon-Tools をインストール。

なんか、Windowsのアップグレードの時にSPTDが無効にされてしまうそうですよ。
  
で、そのままだとバージョンアップしても何しても動かないと。
  
＃イベントビューアにSPTD関連のエラーが出てました。私の場合は。