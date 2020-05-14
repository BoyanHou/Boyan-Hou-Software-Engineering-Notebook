# Chocolatey  
## 使用 windows terminal (power shell) 安装 Chocolatey  
[ref: chocolatey official website - install](https://chocolatey.org/install)  
**注意：需要administrator权限**  
1. 检查ExecutionPolicy：`Get-ExecutionPolicy`   
   若返回
2. 安装  
   输入以下命令：  
   `Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))`
