# PowerShell 报错
- 报错：无法装载`ps1`文件（没有权限执行脚本）  
  内容：`Microsoft.PowerShell_profile.ps1 cannot be loaded because running scripts is disabled on this`  
  原因：执行策略限制 —— Powershell一般初始化情况下都会禁止脚本执行。脚本能否执行取决于Powershell的执行策略。 
  解决：
  - `Get-ExecutionPolicy` 查看现有的执行权限  
  - `Set-ExecutionPolicy RemoteSigned` 设置执行权限  
  
