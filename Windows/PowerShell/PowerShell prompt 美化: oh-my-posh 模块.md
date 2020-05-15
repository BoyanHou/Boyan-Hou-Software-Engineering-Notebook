# PowerShell prompt 美化： oh-my-posh 模块
> A prompt theming engine for Powershell   
- **oh-my-posh** 是用来美化PowerShell prompt 的 **PowerShell 模块**  
- [oh-my-posh GitHub repo 地址](https://github.com/JanDeDobbeleer/oh-my-posh)：`https://github.com/JanDeDobbeleer/oh-my-posh`  
<hr>

### 安装  
> boyan: 在实际操作中，发现`oh-my-posh`模块需要`posh-git`模块作为prerequisite，因此无论是安装还是启用，均需先从`posh-git`模块起始  
```ps1
Install-Module posh-git
Install-Module oh-my-posh
```

### 启用模块和prompt主题  
```ps1
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Agnoster  
```
- 可以使用`Get-Themes`命令 查看所有可用的prompt主题  

<hr>

### 注意事项
- 乱码  
  > 首先需要注意的是，oh-my-posh 主题使用了一些非 Powerline 字体不支持的字符，因此如果你使用默认的等宽字体（比如 Consolas），在显示过程中就会出现乱码、字符显示不全的现象。  
  - 安装 Powerline 字体：   
    [Powerline GitHub repo 地址](https://github.com/powerline/fonts): `https://github.com/powerline/fonts`  
    <br>
    以下为[网路上](https://github.com/itknowledge4/QuickTips/blob/master/Spice%20up%20your%20Powershell%20prompt/commands.ps1)一份用于获取 PowerLine字体的 PowerShell Script:  
    ```getFont.ps1
    #Get and install some cool fonts
    Invoke-WebRequest -Uri 'https://github.com/powerline/fonts/archive/master.zip' -OutFile .\powerlinefonts.zip
    Expand-Archive .\powerlinefonts.zip
    .\powerlinefonts\fonts-master\install.ps1
    
    #Clean up after install is done
    Remove-Item .\powerlinefonts.zip
    Remove-Item .\powerlinefonts -Recurse
    ```
