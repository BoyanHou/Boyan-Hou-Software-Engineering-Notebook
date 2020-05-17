# bash命令: su: switch user
[ref: Su Command in Linux (Switch User)](https://linuxize.com/post/su-command-in-linux/)  

> The su (short for substitute or switch user) utility allows you to run commands with the privileges of another user, by default the root user.  
<br>

### 使用`su another_user_name`切换用户
> boyan: 事实上，当使用`su another_user_name`切换用户时，是以目标用户的身份，fork 出了一个当前shell进程的子进程（也是个shell，具体是个什么shell，由etc/passwd 中对应的目标用户的entry决定）  
所以当不断的`su another_user_name` 时，这些shell进程就会父父子子地嵌套起来，使用`exit`即可退回前一个shell  

- `su` 单独使用，默认切换到 root 用户  
- 默认情况下，使用的shell 和 环境变量，是由 etc/passwd 中对应的目标用户的entry定义的，并不会load ~/.bashrc
- pwd 不会变化  
- 可以使用`whoami`命令随时查看当前身份  


