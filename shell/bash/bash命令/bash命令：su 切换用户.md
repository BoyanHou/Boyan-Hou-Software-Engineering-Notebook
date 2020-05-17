# bash命令：su 切换用户
[ref: Su Command in Linux (Switch User)](https://linuxize.com/post/su-command-in-linux/)  

> The su (short for substitute or switch user) utility allows you to run commands with the privileges of another user, by default the root user.  
<br>

- 事实上，当使用`su another_user_name`切换用户时，是以目标用户的身份，fork 出了一个当前shell进程的子进程  
  - 需要输入**目标用户**的密码  
    - `su` 单独使用，默认切换到 root 用户  
  - 默认情况下：
    - 子进程具体用什么shell，以及其环境变量，都由`etc/passwd`中对应的目标用户的entry决定  
    - pwd 不会变化    
    - 不会load ~/.bashrc  
  - 可以使用`whoami`命令随时查看当前身份  
  - 此后，即可通过这个新的shell来使用目标用户的全部权限  
  - 使用`exit`即可退出该进程，回到前一个shell   

- 命令选项  
  - `-`, `-l`, `--login`  
    使用该选项时，效果类似于直接登入一个shell，即不会停留在登陆之前的pwd  
    (**Q: 除此之外还有其它效果吗？**)
  - `-s`, `--shell`  
    子进程运行指定的shell，而不使用passwd文件中定义的shell  
    e.g. `$ su -s /usr/bin/zsh`  


