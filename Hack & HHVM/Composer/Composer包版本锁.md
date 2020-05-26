# Composer包版本锁  

### What   
- 项目根目录下的`composer.lock`会记录当前全部包的版本  

### Why  
- 为了保证项目中所依赖包的版本一致性  
- 一般来说，项目根目录下的`vendor`目录是整个.gitignore掉的  
  - 只要项目根目录下的`composer.lock`还在就行  
  （其它人想用这个项目，下载下来之后直接在根目录`$ composer install`，就会下载所有`composer.lock`中的所有包的正确版本）  

### How  
- 如果是刚开的项目，或者其它原因，导致根目录中没有`composer.lock`，那么执行`$ composer install`则会:  
  - 安装所有`composer.json`中声明的包的最新版本  
  - 自动创建`composer.lock`   
- 更多对版本锁的操作参见[Composer命令行](https://github.com/BoyanHou/Boyan-Hou-Software-Engineering-Notebook/blob/master/Hack%20&%20HHVM/Composer/Composer%E5%91%BD%E4%BB%A4%E8%A1%8C.md)  
  
