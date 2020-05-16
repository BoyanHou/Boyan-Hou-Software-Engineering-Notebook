# su 命令: switch user  
[ref: Su Command in Linux (Switch User)](https://linuxize.com/post/su-command-in-linux/)  

> The su (short for substitute or switch user) utility allows you to run commands with the privileges of another user, by default the root user.  

- `su`指令 可以使您以其它用户的权限执行命令  
  ```bash
  su [OPTIONS] [USER_COMMANDS ...]
  ```
- `su` 默认切换到 root 用户  
- 切换至另一用户之后，所使用的shell (e.g. bash) 和 home (HOME) 环境变量会根据目标用户而切换  
  而 pwd 则不会变化  
- 


