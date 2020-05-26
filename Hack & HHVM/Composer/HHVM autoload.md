# HHVM autoload
[github: hhvm/hhvm-autoload](https://github.com/hhvm/hhvm-autoload)

### What  
- hhvm-autoload是一个`vendor: hhvm`，用于hhvm的，用来替代composer中autoload功能的包  


### Why  
- Q：【unsolved】既然Composer自己就有autoload功能可以产生map，那为啥要用hhvm-autoload来生成呢？  
  A：？？？因为hhvm-autoload是hack & hhvm用的，Composer的autoload只能给php用？？？
     ？？？因为hhvm-autoload 比 composer dumpautoload更快？？

### How  
- 下载`hhvm-autoload`包到项目中：`$ composer require hhvm/hhvm-autoload`  
- 使用：  
  `项目结构`  
  ```
  > project-root
    composer.json   # Composer在下载/更新包的时候，会同步更新这个文件
    composer.lock   # 包版本锁：记录该项目所需要的packages版本
    hh_autoload.json  # hh-autoload包所需，定义了hh-autoload会扫描哪些文件目录来生成map
    .hhconfig       # ? 配置hh_client
    > src
    > tests
    > bin
    > vendor   # composer 默认会把包下载到这个目录下，一般需要.gitignore
      > bin    # composer 会自动把一切包中bin目录下的文件（如果存在）拷贝到这个bin目录中  
      > vendor-1 (e.g.Facebook)
        > package-1 (e.g. hhvm-autoload)
        > package-2
        > ...
      > vendor-2
      > vendor-3
      > ... 
  ```
  1. 若想使用`hhvm-autoload`自动生成map，必须在项目根目录下的hh_autoload.json中定义要扫描的目录：  
    ```json  
    /**
      project_root/hh_autoload.json 
      */
    {
      "roots": [
        "src/"
      ],
      "devRoots": [
        "tests/"
      ],
      "devFailureHandler": "Facebook\\AutoloadMap\\HHClientFallbackHandler"
    }     
    ```
  2. 使用`$ ./vendor/bin/hh-autoload` 生成map    
     （生成的文件是`project_root/vendor/autoload.hack`）    
  3. 在线程入口文件中`require_once(__DIR__.'/vendor/autoload.hack');`  
     并且在入口函数中`\Facebook\AutoloadMap\initialize();`  
    ```php
    /**
      project_root/index.php
      */
      
    <?hh //strict

    require_once(__DIR__.'/vendor/autoload.hack');

    <<__EntryPoint>>
    function main(): void {
      \Facebook\AutoloadMap\initialize();
      // some hack code...
    }
    ```
      
