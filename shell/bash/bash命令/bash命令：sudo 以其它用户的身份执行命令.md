# bash命令：sudo 以其它用户的身份执行命令
[ref: StackExchange: Why doesn't the sudo command need the root password?](https://unix.stackexchange.com/questions/150718/why-doesnt-the-sudo-command-need-the-root-password#comment354577_151272)  


## WHY  
- Q：既然`sudo`命令是在有了`su`命令之后才出现的，那么，why the hassle，为什么不就用`su`呢？ 
  A：使用`su`切换到目标用户之后，就会拥有目标用户的全部权限，这很不`fine-grain control`  
## HOW 
- `sudo`方法的执行文件(`/usr/bin/sudo`)的`setuid bit`使得不管由哪个用户执行，它都使用的是该执行文件的owner的uid（就是root）  
- 当使用`sudo`方法执行命令时，它首先去`/etc/sudoers`文件查看，调用该方法的用户有没有权限用`sudo`执行这个命令  
  - `sudoers`文件定义了"which users can run which commands using sudo mechanism."  
  - 
  
