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

docker 构建image有两种方式:

    1. 从docker.io pull images
    2. 通过Dockerfile进行构建: 
    命令为 docker build . 运行该指令后，会在当前路径下搜寻名为Dockerfile文件

Dockerfile 构建images的语法简介:

Dockerfile语法有两部分组成:
    1. 注释 # comments
    2. 命令+参数: [command] [argument]

command命令

FROM FROM命令必须是Dockerfile的首个命令。如FROM centos:tag

MAINTAINER 用于声明作者,一般放在FROM命令后面

RUN 运行shell指令

WORKDIR 切换工作路径

CMD 设置container启动时执行的操作 有三种命令形式:
    1. CMD ["executable","param1","param2"] (like an exec, this is the preferred form)
    2. CMD command param1 param2 (as a shell)
    3. CMD ["param1","param2"] (as default parameters to ENTRYPOINT) 需使用ENTRYPOINT配合: ENTRYPOINT ["executable"]

ENTRYPOINT 有两种方式:
    1. ENTRYPOINT ["executable", "param1", "param2"] (like an exec, the preferred form)
    2. ENTRYPOINT command param1 param2 (as a shell)

tips:
    1. CMD 和 ENTRYPOINT 指令，dockerfile 只执行最后一条

COPY image 中文件从一个路径copy到另一个路径

ADD 将本地文件拷贝到image中

USER 切换用户

ENV 设置环境变量如: ENV JAVA_HOME /usr/bin/java

EXPOSE 指定暴露端口

ARG 设置构建时变量，镜像建立完成后就失效

参考文档:
1.[https://docs.docker.com/engine/reference/builder/](https://docs.docker.com/engine/reference/builder/)
