#!/bin/sh

echo 'start server ......'
sh clean.sh

hexo generate

hexo server -p 8888
