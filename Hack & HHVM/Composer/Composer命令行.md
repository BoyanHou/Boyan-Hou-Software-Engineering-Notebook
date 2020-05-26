# Composer命令行

### 添加包  

| command | description |
| ------- | ----------- |
| `composer require vendor/package` | 将发行方（vendor）发布的包（package）下载到`project_root/vendor/vendor/`目录下 |

### 更新包  

| command | description |
| ------- | ----------- |
| `composer update` | 更新所有包 |
| `composer update --with-dependencies` | 更新所有包及其依赖 |
| `composer update vendor/package` | 更新特定包 |
| `composer update vendor/*` | 更新来自特定vendor的所有包 |
| `composer update --lock` | 更新版本锁(`composer.lock`)，而不更新任何包 |
