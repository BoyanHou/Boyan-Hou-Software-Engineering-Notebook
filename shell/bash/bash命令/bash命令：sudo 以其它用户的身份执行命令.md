# bash命令：sudo 以其它用户的身份执行命令
[ref: StackExchange: Why doesn't the sudo command need the root password?](https://unix.stackexchange.com/questions/150718/why-doesnt-the-sudo-command-need-the-root-password#comment354577_151272)  


## WHY  
- Q：既然`sudo`命令是在有了`su`命令之后才出现的，那么，why the hassle，为什么不就用`su`呢？ 
  A：使用`su`切换到目标用户之后，就会拥有目标用户的全部权限，这很不`fine-grain control`  
## HOW 
- 首先，
