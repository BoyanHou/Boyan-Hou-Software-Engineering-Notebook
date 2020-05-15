# Windows安装PowerLine字体 

[Powerline GitHub repo 地址](https://github.com/powerline/fonts): `https://github.com/powerline/fonts`     
<br>

1. 克隆该仓库到本地

2. 找到并运行`install.ps1`，它会自动为我们安装所有的 PowerLine 字体。  

3. 安装完成后，即可删除本地仓库。  
<br>

- 以下为[网路上](https://github.com/itknowledge4/QuickTips/blob/master/Spice%20up%20your%20Powershell%20prompt/commands.ps1)一份用于获取 PowerLine字体的 PowerShell Script:  
  ```getFont.ps1
  #Get and install some cool fonts
  Invoke-WebRequest -Uri 'https://github.com/powerline/fonts/archive/master.zip' -OutFile .\powerlinefonts.zip
  Expand-Archive .\powerlinefonts.zip
  .\powerlinefonts\fonts-master\install.ps1

  #Clean up after install is done
  Remove-Item .\powerlinefonts.zip
  Remove-Item .\powerlinefonts -Recurse
  ```
