# Git 分支操作
[ref：廖雪峰Git教程](https://www.liaoxuefeng.com/wiki/896043488029600/900003767775424)

## 查看分支  
- 查看本地分支 `git branch`   
  （标注`*`的即为当前所在分支）
- 查看远程 `git branch -r`  
- 查看所有（本地+远程）分支 `git branch -a`  

## 切换分支  
- 切换本地分支 `git checkout <branch_name>`  

## 创建/删除 分支
- 创建本地分支 `git branch <new_branch_name>`  
- 删除本地分支 `git branch -d <branch_name>`  

## 关联本地、远程分支  
> 在clone完成之后，Git 会自动为你将此远程仓库命名为origin（origin只相当于一个别名，运行git remote –v或者查看.git/config可以看到origin的含义），并下载其中所有的数据，建立一个指向它的master 分支的指针，我们用(远程仓库名)/(分支名) 这样的形式表示远程分支，所以origin/master指向的是一个remote branch（从那个branch我们clone数据到本地）
