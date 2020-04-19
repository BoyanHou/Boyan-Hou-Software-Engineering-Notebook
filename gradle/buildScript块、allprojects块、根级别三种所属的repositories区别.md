# buildScript块、allprojects块、根级别三种所属的repositories区别
- `buildScript`  
  ```build.gradle
  buildscript {  
     repositories {
         ...
     }
     dependencies {
         ...
     }
  } 
  ```
  - buildScript块的repositories主要是为了Gradle脚本自身的执行，获取脚本依赖插件  
- `allprojects`  
  ```build.gradle
  allprojects { 
     repositories {
         ...
     }
     dependencies {
         ...
     }
  }
  ```
  - 对多个projects的gradle build设置; 下级各个project还可自行设置各自的build配置  
  
- `根级别`
  ```build.gradle    
  repositories {
       ...
  }
  dependencies {
       ...
  }
  ```
  - 对单独一个project的gradle build设置  
