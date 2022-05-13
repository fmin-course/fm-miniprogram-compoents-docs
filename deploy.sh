#!/usr/bin/env sh

echo "begin to deploy"

git checkout main


# 构建
npm run docs:build


# 进入待发布的目录
cd docs/.vitepress/dist

git add -A

git commit -m 'deploy it!!!'

git push origin main

cd -

echo "deploy finish"