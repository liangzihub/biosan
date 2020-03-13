# biosan
# 2020年 03月 13日 星期五 09:39:15 CET
# 
git clone 报错：Peer reports incompatible or unsupported protocol version解决办法
查找原因是curl,nss版本低的原因，解决办法就是更新nss,curl。
[root@server data]# yum update nss curl


