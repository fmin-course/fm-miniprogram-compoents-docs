#!/usr/bin/env sh

echo "begin to deploy"

# 构建
npm run docs:build

git checkout main

# 进入待发布的目录
cd docs/.vitepress/dist

git add -A

git commit -m 'deploy it!!!'

git push origin main

cd -

echo "deploy finish"