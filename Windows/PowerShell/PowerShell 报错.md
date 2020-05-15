# PowerShell 报错
- 报错：无法装载`ps1`文件（没有权限执行脚本）  
  内容：`xxx.ps1 cannot be loaded because running scripts is disabled on this system`  
  原因：执行策略限制 —— Powershell一般初始化情况下都会禁止脚本执行。脚本能否执行取决于Powershell的执行策略。   
  解决：[powershell 脚本执行策略](https://github.com/BoyanHou/Boyan-Hou-Software-Engineering-Notebook/blob/master/Windows/PowerShell/PowerShell%20%E8%84%9A%E6%9C%AC.md)
  
