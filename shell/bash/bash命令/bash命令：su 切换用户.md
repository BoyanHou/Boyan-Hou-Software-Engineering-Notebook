# bash命令：su 切换用户
[ref: Su Command in Linux (Switch User)](https://linuxize.com/post/su-command-in-linux/)  
[ref: StackExchange: How does the “su” command work?](https://unix.stackexchange.com/questions/381498/how-does-the-su-command-work)  

> The su (short for substitute or switch user) utility allows you to run commands with the privileges of another user, by default the root user.  
<br>

- 事实上，当使用`$ su another_user_name`切换用户时，是以目标用户的身份，fork 出了一个当前shell进程的子进程  
  - 需要输入**目标用户**的密码  
    - `$ su` 单独使用，默认切换到 root 用户  
  - 默认情况下：
    - 子进程具体用什么shell，以及其环境变量，都由`etc/passwd`中对应的目标用户的entry决定  
      - 更改子进程所用shell的方法：  
        1. 使用`$ su -s /path/to/your/shell` 具体声明所用shell  
        2. 在当前进程中设置环境变量`$ export SHELL=/path/to/yourshell`然后使用`$ su -m`在子进程中保持所有环境变量  
        3. 在`/etc/passwd`中直接更改目标用户的默认shell（不推荐）  
    - pwd 不会变化    
    - 不会load ~/.bashrc  
  - 可以使用`$ whoami`命令随时查看当前身份  
  - 此后，即可通过这个新的shell来使用目标用户的全部权限  
  - 使用`$ exit`即可退出该进程，回到前一个shell   

- 命令选项  
  - `-`, `-l`, `--login`  
    使用该选项时，效果类似于直接登入一个shell，即不会停留在登陆之前的pwd  
    (**Q: 除此之外还有其它效果吗？**)
  - `-s`, `--shell`  
    子进程运行指定的shell，而不使用passwd文件中定义的shell  
    e.g. `$ su -s /usr/bin/zsh`  
  - `-p`, `--preserve-environment`  
    保留当前进程所有环境变量（`HOME`, `SHELL`, `USER`, `LOGNAME`），而不使用passwd文件中所定义的环境变量  
  - `-c`, `--command`  
    以目标用户的身份执行一条命令，而不进入interactive shell  
    e.g. `$ su -c ps`  
- **注意**    
  - 在一些Linux发行版中（例如Ubuntu），出于安全考虑，root用户默认disabled，没有密码，不能通过`$ su`登入  
    然而，可以使用`$ sudo su -` 命令登入  
- **`sudo`与`su`的区别: **  
  - `su`以目标用户的身份打开子进程shell之后，即可使用目标用户的全部权限  
    - 因此需要输入目标用户的密码  
  - `sudo`则是fine-grained control，由系统文件规定了`who can do what to whom`  
    - 权限校验是根据当前用户身份做的，所以只需要输入当前用户的密码  
    详见[bash命令：sudo 以其它用户的身份执行命令](https://github.com/BoyanHou/Boyan-Hou-Software-Engineering-Notebook/blob/master/shell/bash/bash%E5%91%BD%E4%BB%A4/bash%E5%91%BD%E4%BB%A4%EF%BC%9Asudo%20%E4%BB%A5%E5%85%B6%E5%AE%83%E7%94%A8%E6%88%B7%E7%9A%84%E8%BA%AB%E4%BB%BD%E6%89%A7%E8%A1%8C%E5%91%BD%E4%BB%A4.md)  
  
