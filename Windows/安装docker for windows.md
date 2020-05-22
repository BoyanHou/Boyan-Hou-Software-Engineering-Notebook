# 安装docker for windows

- 直接在powershell 通过chocolatey安装docker desktop会报错：  
  `[19:09:27.103] [InstallWorkflow] Prerequisite failed: Docker Desktop requires Windows 10 Pro/Enterprise (15063+) or Windows 10 Home (19018+).`  
  其原因是当前系统为windows 10 home, 且不为insider版本（19018），因此缺失了`Hyper-V`以及`Containers`组件。
  解决办法：  
  1. [ref: 安装Hyper-V和Container，并改写系统版本为win10 pro蒙骗docker](https://itnext.io/install-docker-on-windows-10-home-d8e621997c1d)  
  2. 直接安装 docker toolbox （本处采取此方法）  
- 安装docker toolbox:  
  [docker 官网: Install Docker Toolbox on Windows](https://docs.docker.com/toolbox/toolbox_install_windows/)  
  - 这个toolbox里包括了
    - git  
    - docker-compose  
    - docker前端UI（kitematic）  
    - oracle vm  
  - 如果已经有了oracle vm, 不要重复安装  
  - 如果已经有了git，也可以不安，但是之后docker quick start terminal会找不到bash.exe路径，需要手动navigate一下  
- 安装好了之后会多出两个快捷方式：docker quick start terminal 和 kitematic  
  点击docker quick start terminal (如上所述，它就是要用bash，可能需要手动navigate到自己之前下过的git/bin里找到bash.exe才能正确打开)  
  - 运行bash script过程中可能会报错`Error getting IP address: Something went wrong running an SSH command`  
    [ref：解决Error getting IP address](https://github.com/docker/toolbox/issues/317)  
    解决办法：先移除原来的docker vm，然后重建一个docker vm  
    ```
    $ docker-machine rm default
    $ docker-machine create --driver virtualbox default
    ```
  - 之后尝试在powershell中运行`docker run hello-world`，可能会出现如下报错：  
    `error during connect: Get http://%2F%2F.%2Fpipe%2Fdocker_engine/v1.35/info: open //./pipe/docker_engine: The system cannot find the file specified. In the default daemon configuration on Windows, the docker client must be run elevated to connect. This error may also indicate that the docker daemon is not running.`  
    解决（？？？）：进入docker-toolbox文件夹，运行start.sh；然后重开powershell，即可成功运行`docker run hello-world`  
