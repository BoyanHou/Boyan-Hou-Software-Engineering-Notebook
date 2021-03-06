# bash命令：sudo 以其它用户的身份执行命令
[ref: StackExchange: Why doesn't the sudo command need the root password?](https://unix.stackexchange.com/questions/150718/why-doesnt-the-sudo-command-need-the-root-password#comment354577_151272)  


## WHY  
- Q：既然`sudo`命令是在有了`su`命令之后才出现的，那么，why the hassle，为什么不就用`su`呢？ 
  A：使用`su`切换到目标用户之后，就会拥有目标用户的全部权限，这很不`fine-grain control`  
## HOW 
> You gain your root powers because of setuid bit of /usr/bin/sudo, not because of any passwords you enter.  

**当然，不要忘记：sudo除了可以使用默认的root权限，也可通过 -u 选项来指定使用任何user的权限（只要/etc/sudoers允许）**  

- `sudo`方法的执行文件(`/usr/bin/sudo`)的`setuid bit`使得不管由哪个用户执行，其sudo进程的uid都是该执行文件的owner的uid（就是root）  
- 当使用`sudo`方法执行命令时，首先`fork`出一个sudo进程，它的uid就是root user的uid  
  sudo进程首先去`/etc/sudoers`文件查看，调用它的用户有没有权限用`sudo`执行这个命令  
  - `sudoers`文件定义了"which users can run which commands using sudo mechanism."  
    一个`/etc/sudoers`文件实例（ubuntu）：  
    ```sudoers
    # User privilege specification
    root    ALL=(ALL:ALL) ALL

    # Members of the admin group may gain root privileges
    %admin ALL=(ALL) ALL

    # Allow members of group sudo to execute any command
    # It lets anybody in the "sudo" group to execute any command as any user.
    %sudo   ALL=(ALL:ALL) ALL
    ```
  - 如果`sudoers`文件中允许，则sudo进程就会再生出一个子进程来执行sudo后面的命令  
    - 该子进程的uid跟sudo进程的uid相同，都是root user的uid  
  - sudo命令要求输入当前用户的密码，只是为了验证当前用户确实是其本人  
    （sudo does not need your user password for anything，因为它用的就是root用户的uid）  
    - 这个要求提供了一定的预警和保护的功能，但若不想要，可以很容易的去掉    
      更改`/etc/sudoers`文件中的`%sudo` entry为:  
      ```sudoers
      %sudo   ALL=(ALL:ALL) NOPASSWD: ALL
      ```
      即可。  
  - `$ sudo`选项  
    - `-i`：打开一个interactive shell；默认使用root uid  
      `$ sudo -i`  的效果等同于 `$ sudo su -`  
      
