Git本地仓库和GitHub远程仓库建立连接
1.打开Git Bash，输入下面命令，按提示输入密码
$ ssh-keygen -t rsa -C "注册邮箱" 

2.获取key，打开.ssh下的id_rsa.pub文件，里面的内容就是key的内容

3.登录GitHub，打开"SSH Keys"页面

4.测试ssh key是否成功，使用命令"ssh -T git@github.com", 如果出现You've successfully anthenticated，but GitHub does not provide shell access这表示已经成功连上github