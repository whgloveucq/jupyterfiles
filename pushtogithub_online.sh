#！/bin/sh
read -p "输入要上传的文件,如果是全部请直接回车:" file_name
read -p "更新描述:" description
#echo "welcome $file_name"
if [ ${file_name} =='' ] ; then 
   file_name="*"
fi 
echo "welcome $file_name"
echo "第一步：查看当前的git仓库状态，可以使用git status"
git status
echo "第二步：更新全部"
git add ${file_name}

git config --global user.email "whgloveu@hotmail.com"
git config --global user.name "whgloveucq"
#git remote set-url origin  https://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@github.com/whgloveucq/jupyterfiles.git
echo "第三步：接着输入git commit -m "$description""
git commit -m "${description}"
echo "第四步：先git pull,拉取当前分支最新代码"
git config --global pull.rebase true
git pull 
echo "第五步：push到远程master分支上"
git remote rm origin
git remote add origin git@github.com:whgloveucq/jupyterfiles.git
#git remote set-url origin  https://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@github.com/whgloveucq/jupyterfiles.git
git push -u  origin master
echo "如有问题，请查看.git 目录下的config文件"
