# 修改settings.json以客制化windows terminal外观
[boyan：一个settings.json示例](https://github.com/BoyanHou/Boyan-Hou-Software-Engineering-Notebook/blob/master/Windows/windows%20%20terminal/settings.json)  

- 此配置文件结构为:  
  ```settings.json
  {
      // 一些全局设置
      "xxx" : value,
      ...
    
      // profile 设置
      "profiles" : {
          "defaults" : {},
          "list" : []
       },
       
       // color scheme 设置
       "schemes" : [],
       
       // 快捷键绑定
       "keybindings" : []
  }
  ```
  在`"scheme"`中直接设置配色及其命名，即可在`"profile"`中使用该配色。  

