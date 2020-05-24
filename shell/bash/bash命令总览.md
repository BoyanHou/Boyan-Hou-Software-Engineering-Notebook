# bash命令总览

## 其它

| description | bash command | shorthand |
| ------------ | ----------- | --------- |
| 重载.bashrc | source ~/.bashrc | . ~/.bashrc |
| 安装过程中全选yes | apt-get -y install [packagename] | |
|（ubuntu限定）在当前路径下，创建一个通往其它（任何）路径的symbolic link | ln -s /home/ubuntu/pms myfolder | |
| 使.sh文件(shell script)可运行（给shell运行此shell script的权限） | chmod +x <fileName> | |
| 解压 .tgz 文件 | tar zxvf file_name.tgz | |

## 用户组/权限   

| description | bash command | shorthand |
| ------------ | ----------- | --------- |
| 查看所有用户密码 | cat /etc/passwd | |
| 改密码 | passwd 用户名 | |
| 创建新用户 | [bash命令：创建新用户](https://github.com/BoyanHou/Boyan-Hou-Software-Engineering-Notebook/blob/master/shell/bash/bash%E5%91%BD%E4%BB%A4/bash%E5%91%BD%E4%BB%A4%EF%BC%9A%E5%88%9B%E5%BB%BA%E6%96%B0%E7%94%A8%E6%88%B7.md) | |
| 切换用户（by default root）<br>（实际上：以目标用户的uid在子进程中运行新的shell） | [bash命令：su 切换用户](https://github.com/BoyanHou/Boyan-Hou-Software-Engineering-Notebook/blob/master/shell/bash/bash%E5%91%BD%E4%BB%A4/bash%E5%91%BD%E4%BB%A4%EF%BC%9Asu%20%E5%88%87%E6%8D%A2%E7%94%A8%E6%88%B7.md) | |
| 以其它用户（by default root）的权限执行命令 | [bash命令：sudo 以其它用户的身份执行命令](https://github.com/BoyanHou/Boyan-Hou-Software-Engineering-Notebook/blob/master/shell/bash/bash%E5%91%BD%E4%BB%A4/bash%E5%91%BD%E4%BB%A4%EF%BC%9Asudo%20%E4%BB%A5%E5%85%B6%E5%AE%83%E7%94%A8%E6%88%B7%E7%9A%84%E8%BA%AB%E4%BB%BD%E6%89%A7%E8%A1%8C%E5%91%BD%E4%BB%A4.md) | |

## 进程/核心  

| description | bash command | shorthand |
| ------------ | ----------- | --------- |
| 查看有没有进程绑定了port 8000 | sudo netstat -pna \| grep 8000 | |
| 进程后台运行 | 命令结尾加 & <br> e.g.: ./myprogram &| |
| 查看当前机器核心数量 | cat /proc/cpuinfo \| grep process | |
| 查看所有process的cpu使用情况 | top | |
| 查看某一porcess的核affinity （可以使用哪些cpu核）| taskset -pc <pid> | |
| 将某一程序绑定在特定的一个或多个cpu核上启动 | taskset -c <cores> command <br>e.g.: taskset -c 3 ./my_program (将my_program 绑定在cpu 第3 个核心上启动) <br>e.g.: taskset -c 0,2 ./my_program (将my_program 绑定在cpu 第0 & 第2 个核心上启动) | |
| 将某一正在运行的进程绑定在特定的一个或多个cpu核上 | taskset -pc <cores> pid <br>e.g.： taskset -pc 3 11234 (将pid为11234的进程绑定在cpu第三个核心上) | |
| 列出所有kernel module | lsmod | |

