  ```txt
  项目结构：
  src
  -> main
    ->java
      ->any.package.you.have
        ->controller
        ->service
        ->model
        ->anything_java_you_need
    ->resources
      application.properties
    ->webapp
  ```
  
- 设置资源路径（`html`, `jsp`等）  

  SpringBoot的对于资源的搜索路径默认为：`src/main/webapp/`   
  
  可以在`src/main/resources/applicatoins.properties`中对`spring.mvc.view.prefix`选项进行客制化，但相对路径的起始地址仍然是`src/main/webapp/`   
  e.g.
  ```applicatoins.properties
  spring.mvc.view.prefix=/views/
  ```
  该配置导致搜索路径改为：`src/main/webapp/` + `views/` = `src/main/webapp/views/`    
  !!目前不清楚如何改变以`webapp`为基准的搜索方式  
