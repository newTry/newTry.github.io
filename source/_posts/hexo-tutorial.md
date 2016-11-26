---
title: hexo 使用教程
date: 2016-05-22 16:13:15
tags: 
- hexo 
- 教程
categories: 
- hexo 
---

Hexo 是高效的静态站点生成框架，她基于 Node.js。 通过 Hexo 你可以轻松地使用
Markdown 编写文章，除了 Markdown 本身的语法之外，还可以使用 Hexo 提供的 标签插件
来快速的插入特定形式的内容。在这篇文章中，假定你已经成功安装了 Hexo，并使用 Hexo
提供的命令创建了一个站点。
<!-- more -->

你可以访问 Hexo 的文档 了解如何安装 Hexo
在 Hexo 中有两份主要的配置文件，其名称都是 _config.yml。
其中，一份位于站点根目录下，主要包含 Hexo本身的配置；另一份位于主题目录下，这份配置由主题作者提供，主要用于配置主题相关的选项。
为了描述方便，在以下说明中，将前者称为 站点配置文件， 后者称为 主题配置文件。

## 目录结构说明

    有时间整理一下

## 创建文章

    hexo new post-name

## 文章存放路径

    source/_post/*.md

## 文章描述
<!-- 文章描述信息 -->

    title: hexo 使用教程
    date: 2016-05-22 16:13:15
    tags:
    - hexo
    - 教程
    categories:
    - hexo

## 清理
当显示标签个数与实际不符合时，需要清理hexo，并重新编译
    删除db.json .deploy_git 并执行下列命令 
    hexo clean  #清理缓存
    hexo g      #重新编译，生成
    hexo s      #启动服务，本地调试
    hexo d      #部署到服务器

通过命令hexo g -d 可以将本地的hexo源文件编译为网站站点,并根据_config.xml中的配置将编译后的网站站点文件推送到目标仓库。
    # Deployment
    ## Docs: https://hexo.io/docs/deployment.html
    deploy:
        type: git
        repository: git@github.com:newtry/newtry.github.io.git
        branch: master


