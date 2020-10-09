sudo pip3 install ppadb
Mac pip3 安装包在 /usr/local/lib/python3.8/site-packages 中
安装时使用了sudo 可能导致package只对root用户可执行（rwx which?）
使用sudo chmod -R +rwx /usr/local/lib/python3.8/site-packages 即可赋予所有人对python3包的rwx权限
