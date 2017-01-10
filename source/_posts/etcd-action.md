---
title: etcd 使用与理解
date: 2017-01-03 11:34:44
tags:
categories:
---


etcd 是一个key value 数据库，用于服务注册、服务发现以及高可用配置用心。源于其高度一致性的特性。

安装etcd

yum install etcd

可执行脚本路径 /opt/etcd/bin/

启动etcd 服务

sh etcd

测试服务可用

sh etcdctl set [key] [value]

sh etcdctl get [key]

http 方式根据key获取value

curl -L http://localhost:4001/v2/keys/[key]




