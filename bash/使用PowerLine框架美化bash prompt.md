# 使用PowerLine框架美化bash prompt  
[ref: 终端（Terminal）美化与扩展](https://zyxin.xyz/blog/2019-07/BeautifyTerminal/)  
[PowerLine 官方GitHub repo](https://github.com/powerline/powerline)  

## 什么是PowerLine 
> Powerline is a statusline plugin for vim, and provides statuslines and prompts for several other applications, including zsh, bash, fish, tmux, IPython, Awesome, i3 and Qtile.  

(所以 PowerLine 最主要的目的是为 vim 美化状态行显示...)  
- PowerLine 是 prompt（命令提示符）美化工具， 可用于各种 shell (e.g.`zsh`，`bash`)   
- Powerline有很多版本，有直接通过shell配置脚本实现的，也有通过独立程序进行显示的。
  - powerline: 这应该是最初的也是最全的powerline，基于Python
  - powerline-shell: 这是针对美化shell的版本，同样基于Python，配置比上面的简单
  - powerline-go: 用go语言写的版本，运行更快
  - bash-powerline: 用bash编写的用于bash的powerline
