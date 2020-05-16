# bash命令：创建新用户
！可能会提示输入keberos密码，正常人是不知道这个密码的
！可能还会提示输入Linux密码，正常人也是不知道这个密码的
解决办法：
sudo -s
pam-auth-update
然后会切进一个选择authentication的界面，用空格键把keberos和linux authentication都取消了就行
