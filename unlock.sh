#!/bin/bash
#安装网易云音乐解锁工具
#Linxu初学者写的渣渣 整合命令  1802
#Github：https://github.com/lxyok
#实测 阿里云香港服务器 CentOS 7.3 成功
yum -y install curl
curl -sL https://rpm.nodesource.com/setup_10.x | bash -
yum -y install nodejs
yum -y install epel-release
yum -y install supervisor
yum -y install git
git clone https://github.com/nondanee/UnblockNeteaseMusic.git

cd UnblockNeteaseMusic
echo '[supervisord]
nodaemon=false

[program:netease]
user=root
directory=/root/UnblockNeteaseMusic
command=/usr/bin/node app.js -p 10001
autostart=true
autorestart=true'>>/etc/supervisord.d/netease.ini

systemctl start supervisord  &&  systemctl enable supervisord
echo './wyy.sh'>>/etc/rc.local
echo 'OK,安装完成。'
echo '请到网易云音乐PC客户端——设置——工具——自定义代理'
echo '填写你的VPS IP和端口。'
echo '端口填写10001'
echo '端口填写10001'
echo '端口填写10001'
echo '祝你使用愉快。'