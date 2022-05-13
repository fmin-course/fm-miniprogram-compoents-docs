#!bin/
echo "begin to deploy"

# 构建
npm run docs:build

# 进入待发布的目录
git checkout main

cd docs/.vitepress/dist

git add -A

git commit -m 'deploy it!!!'

git push origin main