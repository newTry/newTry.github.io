hexo clean

rm -rf .deploy_git
git push origin hexo

hexo g -d
