---
layout: post
title:  "2019/08/01 Release Note"
date:   2019-08-01 09:01:23 +0900
categories:
	- releasenote
---
# 雑感

* 温度も湿度もやばい･･･これは人間が暮らせる状況では･･･
* にしても8月に入ってしまった

# Done

## WG2600HP

ACアダプタがなかったので別途買う羽目になったけれども、本体だけであれば 12V 1.5A（NECの前の機種のACアダプタ）でも普通に動く。
12V 2.5Aのアダプタは、ルーター一体型ONUのACアダプタだったりするようだ（メルカリで購入した）。
ジャックは、 EIAJ 4 のセンタープラス。

## kubernetes （クラスタ作成）

しばらく書いてなかった分まとめて。 サーバーのメモリが足りないのでdockerイメージビルドサーバーを止めたり、あちこちからメモリを
削ったりしてなんとか 2GB * 3台 を確保。
とりあえず kubeadm を使って 1マスター、2ワーカーでクラスタを作成。

## kubernetes （ストレージ）
･･･とここまで来てストレージをどうするか悩む。 というかどうすれば良いかわからなかった。
まず https://kubernetes.io/docs/concepts/storage/storage-classes/ のProvisioner一覧から選ぶ事にしようと思った。
有償のものは除外 (StorageOSは十分な容量が無償で使えるので除外せず)、Internal provisioner がチェックじゃないものを除外。
クラウドを除外。 これで残るのは StorageOS / Glusterfs / ScaleIO / Ceph (FS or RBD) のいずれか。
だがしかし、メモリ量の問題で、分散ストレージは動かせない。ScaleIOは clusterhq.com がアクセス不可（ rook になったらしい )
で、結局VMを1台立てて、NFSをバックエンドにすることにした。minioを使ってS3をバックエンドにするのも考えたが、HTTPより
ファイル共有用のNFSの方が性能がいいだろうと考えた。
しかし、NFSを素で使ってしまうと、1コンテナにつき1 NFS共有が必要になってしまい、面倒くさい of 面倒くさい。
(Persistent VolumeをPodのyamlに書くことになってしまい、k8sらしくないという問題も。)

結論としては、NFSをバックエンドにして、External Provisioner として nfs-client を使うことにした。
https://qiita.com/teruq/items/17609eecc29b70e2cbe7
https://github.com/kubernetes-incubator/external-storage
これにより、nfs-clientがStorageClass (SC) として提供され、PersistentVolumeClaim(PVC) によりDynamic Provisioningされる。
ただ、この手順でStorageClassを作成しても、なぜかdefaultフラグが立たなかったために(`kubectl get sc` で確認できる）
以下のコマンドでdefaultに設定している。
```
kubectl patch storageclass nfs-client -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'
```

NFSサーバーは、管理が容易なようにOpenMediaVaultを使用している。後々容量を拡張しやすいように、LVMとした。（プラグイン入れた）
（普段はLVM苦手なのであまり使わないようにしているのだが･･･） ファイルシステムはXFS。
OMVで共有フォルダを作る際、アクセス制限をだれでも書込に設定しておかないとNFSに書込できないので注意。(allsquashしているので)

## kubernetes (ダッシュボード)

手順通り入れても動かなくて割と参った。設定が NodePort なのでserviceが動いているノードのIPにアクセスしないとアクセスできない。
（これ、LoadBalanceにしたらmasterのIPでいけるのでは）
そして、アクセスしてみると権限不足的なエラーがどっさりと表示された。
https://github.com/kubernetes/dashboard/issues/2326#issuecomment-402701165
これを流すと上手く表示できるようになった。
・・・と思ったら今みると表示出来ない。うわぁ。。

# TODO 

## k8sへの移行

- [ ] elasticHQ
- [ ] writefreely
- [ ] fastladder
- [ ] mastodonテストインスタンス
- [ ] misskey

## 職務経歴書

- [x] 外枠（プロジェクト名と日付）
- [ ] フォーマット統一
- [ ] プロジェクトの中身 (2018)
- [ ] プロジェクトの中身 (2017)
- [ ] プロジェクトの中身 (2016)
- [ ] プロジェクトの中身 (2015)
- [ ] プロジェクトの中身 (2014)
- [ ] プロジェクトの中身 (2013)
- [ ] プロジェクトの中身 (2012)
- [ ] プロジェクトの中身 (2011)
- [x] プロジェクトの中身 (2011より前)
- [ ] 自己PR

進捗ありません！

## 痩せる

- [ ] プールに行って泳ぐ
