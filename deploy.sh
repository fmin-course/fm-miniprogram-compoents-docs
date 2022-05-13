#!/usr/bin/env sh

echo "begin to deploy"

set -e

# 构建
npm run docs:build

# 进入待发布的目录
cd docs/.vitepress/dist

git init
git add -A

git commit -m 'deploy it!!!'

# git push -f https://github.com/fmin-course/github.io.git/docs/ master:gh-pages
git push -f git@github.com:fmin-course/fm-miniprogram-compoents-docs.git master:main

cd -

echo "deploy finish"