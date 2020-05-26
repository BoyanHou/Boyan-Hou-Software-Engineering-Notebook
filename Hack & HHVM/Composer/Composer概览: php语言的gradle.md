# Composer概览: php语言的gradle  

[ref: get-composer.org](https://getcomposer.org/doc/01-basic-usage.md#composer-json-project-setup)

### What  
- `Composer`即为php（以及hack）语言的专用包管理器；  
  - 它不像apt-get一类直接将包下载到用户类库中   
    而是将包直接下载到项目目录（默认`project_root/vendor/`目录下）  
    
### How  
- 通过命令行操作，参考：[composer命令行](https://github.com/BoyanHou/Boyan-Hou-Software-Engineering-Notebook/blob/master/Hack%20%26%20HHVM/Composer/Composer%E5%91%BD%E4%BB%A4%E8%A1%8C.md)  
- `项目结构`  
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
  - **注意！！**：composer 会自动拷贝一切`project-root/vendor/vendor/package/./bin`中的文件（如果存在）到`project-root/vendor/bin`目录中  
    - 可能是为了方便从命令行调用这些可执行文件？  
    - 但是必定会引起`hh_client`报错（函数/类..命名重复）  
    - 解决：[ref: stack overflow](https://stackoverflow.com/questions/56641543/why-are-there-naming-collisions-in-composers-vendor-folder-between-bin-and-hh)  
      在`.hhconfig`中添加`ignored_paths = [ "vendor/.+/tests/.+", "vendor/.+/bin/.+" ]`，以忽略包目录下的bin目录  
  - 如何auto-load这些包: [HHVM autoload](https://github.com/BoyanHou/Boyan-Hou-Software-Engineering-Notebook/edit/master/Hack%20&%20HHVM/Composer/HHVM%20autoload.md)  
    
  
