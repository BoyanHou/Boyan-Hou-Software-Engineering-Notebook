# PowerShell 脚本执行策略
[ref: Powershell 编写和运行脚本](https://www.pstips.net/powershell-create-and-start-scripts.html)  

- 脚本执行策略限制  
  > Powershell一般初始化情况下都会禁止脚本执行。脚本能否执行取决于Powershell的执行策略。  
  
  由于执行策略限制而无法执行脚本，会报错：`xxx.ps1 cannot be loaded because running scripts is disabled on this system`   
 
- 查看脚本执行策略: `Get-ExecutionPolicy`  
  （若无权限执行，则会返回 `restricted`）  

- 更改脚本执行策略：`Set-ExecutionPolicy UnRestricted`  
  只有**管理员**才有权限更改这个策略。非管理员会报错。 
  - 在开始界面右击 windows terminal 程序，选择以 admin 身份打开即可。  
  
- PowerShell 支持的`执行策略`类型  
  - 脚本执行策略类型为：`Microsoft.PowerShell.ExecutionPolicy`  
  - 查看所有支持的执行策略：`[System.Enum]::GetNames([Microsoft.PowerShell.ExecutionPolicy])`  
    - `Unrestricted`: 权限最高，可以不受限制执行任何脚本。  
    - `Default`: 为Powershell默认的策略  
    - `Restricted`: 不允许任何脚本执行。  
    - `AllSigned`: 所有脚本都必须经过签名才能在运行。  
    -  `RemoteSigned`: 本地脚本无限制，但是对来自网络的脚本必须经过签名。  
