# bash命令总览

| description | bash command | shorthand |
| ------------ | ----------- | --------- |
| 重载.bashrc | source ~/.bashrc | . ~/.bashrc |
| 安装过程中全选yes | apt-get -y install [packagename] | |
| 查看所有用户密码 | cat /etc/passwd | |
| 改密码 | passwd 用户名 | |
| 创建新用户 | [bash命令：创建新用户](https://github.com/BoyanHou/Boyan-Hou-Software-Engineering-Notebook/blob/master/shell/bash/bash%E5%91%BD%E4%BB%A4/bash%E5%91%BD%E4%BB%A4%EF%BC%9A%E5%88%9B%E5%BB%BA%E6%96%B0%E7%94%A8%E6%88%B7.md) | |
|（ubuntu限定）在当前路径下，创建一个通往其它（任何）路径的symbolic link | ln -s /home/ubuntu/pms myfolder | |
| 查看有没有进程绑定了port 8000 | sudo netstat -pna \| grep 8000 | |
| 使.sh文件(shell script)可运行（给shell运行此shell script的权限） | chmod +x <fileName> | |
| 解压 .tgz 文件 | tar zxvf file_name.tgz | |
| 切换用户<br>（实际上：以目标用户的uid在子进程中运行新的shell） |  | |

