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



### 设置PowerShell初始化自启动模块和主题  
1. 输入`$PROFILE` 查看PowerShell profile文件所在路径(**不同于Windows Terminal所使用的 settings.json 文件**)
2. 打开该 profile文件，写入:  
   ```PowerShell.profile.ps1
    Import-Module posh-git
    Import-Module oh-my-posh
    Set-Theme Agnoster  
   ``` 
   此后，PowerShell 便会在启动时自动装载模块及主题。  
3. 若出现执行策略报错：`xxx.ps1 cannot be loaded because running scripts is disabled on this system`  
   [查看此篇解决方案：PowerShell 脚本执行策略](https://github.com/BoyanHou/Boyan-Hou-Software-Engineering-Notebook/blob/master/Windows/PowerShell/PowerShell%20%E8%84%9A%E6%9C%AC%E6%89%A7%E8%A1%8C%E7%AD%96%E7%95%A5.md)  
   
   
<hr>  


### 注意事项
- 乱码：使用了非`PowerLine`字体
  > 首先需要注意的是，oh-my-posh 主题使用了一些非 Powerline 字体不支持的字符，因此如果你使用默认的等宽字体（比如 Consolas），在显示过程中就会出现乱码、字符显示不全的现象。  
  
  [查看此篇解决方案: Windows 安装PowerLine字体 ](https://github.com/BoyanHou/Boyan-Hou-Software-Engineering-Notebook/blob/master/Windows/Windows%20%E5%AE%89%E8%A3%85PowerLine%E5%AD%97%E4%BD%93.md)

- 日期显示bug: 
   > 值得注意：如果你发现后面的日期显示出现了凌乱的现象（比如本该在同一行显示的字符却跑到了下一行），多半是因为显示了中文。目前很多终端都不能正常的显示中文或 CJK 字符（即：Double-width character），所以你可以通过下面这个命令将 PowerShell 的环境设置为 en-US 的英文环境：  
      `Set-Culture en-US`
