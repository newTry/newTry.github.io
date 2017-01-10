---
title: docker 基础指令
descripe: 学习使用docker过程中一些简单的指令和理解
date: 2017-01-03 10:36:15
tags:
categories:
---

images:镜像,类型软件安装包

container:容器，用于运行images

docker images 查看所有的镜像

docker ps -[options] 查看运行或历史运行的container

docker start -[options] [image name] 根据image启动新的container

docker run [container name] 启动container

docker exec -[option] [container name] [command]
