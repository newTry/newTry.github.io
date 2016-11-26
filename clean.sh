#!/bin/sh

echo 'start clean hexo ......'

if [ -f db.json ];then
    rm -f db.json
    echo 'delete db.json file'
else
    echo 'db.json file not exist'
fi

if [ -d .deploy_git ];then
    rm -rf .deploy_git
    echo 'delete .deploy_git directory'
else
    echo '.deploy_git not exist'
fi

hexo clean

echo 'clean hexo success!'
