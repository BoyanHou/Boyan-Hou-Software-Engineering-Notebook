# HHVM autoload
[github: hhvm/hhvm-autoload](https://github.com/hhvm/hhvm-autoload)

### What  
- hhvm-autoload是一个`vendor: hhvm`，用于hhvm的，用来替代composer中autoload功能的包  


### Why  
- 

### How  
- 下载`hhvm-autoload`包到项目中：`$ composer require hhvm/hhvm-autoload`  
- 使用：  
  `项目结构`  
  ```
  > project-root
    > src
    > tests
    > bin
    > vendor   # composer 默认会把包放在这里 
      > bin    # composer 会自动把一切包中bin目录下的文件（如果存在）拷贝到这个bin目录中  
      > vendor-1 (e.g.Facebook)
        > package-1 (e.g. hhvm-autoload)
        > package-2
        > ...
      > vendor-2
      > vendor-3
      > ... 
  ```
