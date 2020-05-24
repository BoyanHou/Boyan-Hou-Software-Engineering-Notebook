# VirtualBox Setup (windows)  
1. 首先到ubuntu官网下载`.iso`系统镜像  
2. 用virtualbox开一个新的vm，开机以后选择刚下载的iso镜像  
3. 系统装载完毕后，窗口还是很小，因为没装 “增强功能” (virtualbox guest additions)  
  - 这是一个kernel模块  
  - 它的`.iso`镜像已经包含在virtualbox的根目录里了，找一下就能找到  
  - 然后选择vm窗口上边栏的`Devices` > `Insert Guest Additions CD Image`  
    就会自动装载guest additions 镜像盘  
  - 好了之后会发现ubuntu桌面左边栏显示有CD光盘插入，点开，选择在terminal中打开  
    在打开的bash中：  
    ```bash
    sudo ./VBoxLinuxAdditions.run
    ```
    （这个光盘目录下一般会有很多版本的guest additions，如windows, osx...在ubuntu中要跑`VBoxLinuxAdditions.run`这个版本）  
  - 重启vm，`Ctrl + F`全屏之后窗口即会显示正常比例  
  - 确认vm已经安装guest addition这个内核模块：`$ lsmod | grep vboxguest`
