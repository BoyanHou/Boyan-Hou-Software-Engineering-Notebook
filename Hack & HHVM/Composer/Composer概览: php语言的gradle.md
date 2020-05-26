# Composer概览: php语言的gradle  

[ref: devhint.io/composer](https://devhints.io/composer)
[ref: get-composer.org](https://getcomposer.org/doc/01-basic-usage.md#composer-json-project-setup)

### What  
- `Composer`即为php（以及hack）语言的专用包管理器；  
  - 它不像apt-get一类直接将包下载到用户类库中   
    而是将包直接下载到项目目录（默认`project_root/vendor/`目录下）  
    
### man  

| command | description |
| ------- | ----------- |
| `composer require vendor/package` | 将发行方（vendor）发布的包（package）下载到`project_root/vendor/vendor/`目录下 |
