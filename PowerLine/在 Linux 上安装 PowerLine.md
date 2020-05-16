# 在 Linux 上安装 PowerLine  
[ref: Powerline – Adds Powerful Statuslines and Prompts to Vim Editor and Bash Terminal](https://www.tecmint.com/powerline-adds-powerful-statuslines-and-prompts-to-vim-and-bash/)  
[ref: ask-ubuntu - how to install powerline for bash](https://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin/953875#953875)  

1. 原版的 PowerLine 是 Python 写的，所以安装它，我们得先有python 包管理器 `pip`  
  ```bash
  sudo apt-get update  
  sudo apt-get install python-pip
  ```
2. 通过 `pip` 下载 PowerLine package：  
  ```bash
  pip install --user git+git://github.com/Lokaltog/powerline
  ```
