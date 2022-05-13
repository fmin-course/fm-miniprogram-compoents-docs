#!/usr/bin/env sh

echo "begin to deploy"

# 构建
npm run docs:build

# 进入待发布的目录
cd docs/.vitepress/dist

git add -A

git commit -m 'deploy it!!!'

git push -f https://github.com/fmin-course/github.io.git master:gh-pages

cd -

echo "deploy finish"