# Composer命令行
[ref: devhint.io/composer](https://devhints.io/composer)  

### 生成map  

**注意！！**：在hack/hhvm项目中，不要使用composer本身的autoload来生成map，而要用hhvm-autoload包的autoload，详见[HHVM autoload](https://github.com/BoyanHou/Boyan-Hou-Software-Engineering-Notebook/blob/master/Hack%20&%20HHVM/Composer/HHVM%20autoload.md)

| command | description |
| ------- | ----------- |
| `composer dumpautoload` | 在`project_root/vendor/`目录下生成autoload map文件`autoload.php` |
| `composer dumpautoload -o` | 同上，但生成的是优化过的（？？）autoload map文件 | 

### 添加包  


| command | description |
| ------- | ----------- |
| `composer require vendor/package` | 将发行方（vendor）发布的包（package）下载到`project_root/vendor/vendor/`目录下，并将包信息更新到`composer.json`的`require`部分 |
| composer require vendor/package --dev | 同上，但包信息更新到`composer.json`的`require-dev`部分 | 

### 更新包  

| command | description |
| ------- | ----------- |
| `composer update` | 更新所有包 |
| `composer update --with-dependencies` | 更新所有包及其依赖 |
| `composer update vendor/package` | 更新特定包 |
| `composer update vendor/*` | 更新来自特定vendor的所有包 |
| `composer update --lock` | 更新版本锁(`composer.lock`)，而不更新包本身 |

### 移除包  

| command | description |
| ------- | ----------- |
| `composer remove vendor/package` | 删除`vendor/package`，以及`composer.json`中记录的包信息 |

### 下载包  

| command | description |
| ------- | ----------- |
| `composer install` | 若项目根目录下存在`composer.lock`，则根据其下载所有包；若不存在，则根据`composer.json`下载所有包的最新版本，并创建`composer.lock` |
| `composer install --dry-run` | 同上，但不会实际下载这些包 |


