# PowerShell prompt 美化： oh-my-posh 模块
> A prompt theming engine for Powershell   
- **oh-my-posh** 是用来美化PowerShell prompt 的 **PowerShell 模块**  
- [oh-my-posh GitHub repo 地址](https://github.com/JanDeDobbeleer/oh-my-posh)：`https://github.com/JanDeDobbeleer/oh-my-posh`  
<hr>

### 安装  
```ps1
Install-Module posh-git
Install-Module oh-my-posh
```
<hr>

### 注意事项
- 乱码  
  > 首先需要注意的是，oh-my-posh 主题使用了一些非 Powerline 字体不支持的字符，因此如果你使用默认的等宽字体（比如 Consolas），在显示过程中就会出现乱码、字符显示不全的现象。
