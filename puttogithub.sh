echo "第一步：查看当前的git仓库状态，可以使用git status"

git status

echo "第二步：更新全部"

git add *

echo "第三步：接着输入git commit -m "更新说明""

git commit -m "更新说明"

echo "第四步：先git pull,拉取当前分支最新代码"

git pull

echo "第五步：push到远程master分支上"

git push origin master



