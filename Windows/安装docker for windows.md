# 安装docker for windows

- 直接在powershell 通过chocolatey安装docker desktop会报错：  
  `[19:09:27.103] [InstallWorkflow] Prerequisite failed: Docker Desktop requires Windows 10 Pro/Enterprise (15063+) or Windows 10 Home (19018+).`  
  其原因是当前系统为windows 10 home, 且不为insider版本（19018），因此缺失了`Hyper-V`以及`Containers`组件。
  解决办法：  
  1. [ref: 安装Hyper-V和Container，并改写系统版本为win10 pro蒙骗docker](https://itnext.io/install-docker-on-windows-10-home-d8e621997c1d)  
  2. 直接安装 docker toolbox （本处采取此方法）  
- 安装docker toolbox:  
  [docker 官网: Install Docker Toolbox on Windows](https://docs.docker.com/toolbox/toolbox_install_windows/)
