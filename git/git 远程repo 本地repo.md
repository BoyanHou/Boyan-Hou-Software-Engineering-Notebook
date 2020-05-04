- gitlab: 本地repo直接push到gitlab(创建新repo)  
    `git push --set-upstream https://gitlab.com/byhoo/ece568_prj1.git master`  
    **！注意: github 不支持直接push到不存在的repo，必须先手动创建**  

- 查看所有 remote repo:  
    `git remote -v`

- 更改一个已有remote:  
    `git remote set-url <existing remote-name> <remote-url>`

- 添加一个remote:  
    `git remote add <set remote's name; typically origin> <remote-url>`

- >`git pull` = `git fetch`, then `git merge`  
    git fetch 之后 亦可以：
    1. 查看远程分支与本地分支的代码差别:  
        `git diff <remote-name>/<remote-branch> <local-branch> `
    2. 查看远程分支与本地分支的commit差别:    
        `git cherry <remote-name>/<remote-branch> <local-branch>`
