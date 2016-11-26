#!/bin/sh

echo 'push origin code to github ......'
git push origin hexo
echo 'push code success ......'

echo 'start deploy site ......'
hexo g -d

echo 'deploy site success ......'
