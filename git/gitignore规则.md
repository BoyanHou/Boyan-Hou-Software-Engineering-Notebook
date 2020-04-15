# gitignore规则
[参考：简书](https://www.jianshu.com/p/ea6341224e89)  

## 小朋友你是否有很多问号？  
- Q: 为什么执行了 `git rm -rf --cached .` 之后 `git add` 还会加入 `.gitignore`中已经ignore的文件？  
  A：因为此时远程仓库中存在这个文件，所以本地仓库会进行强制追踪；   
  解决：  
  ```bash
  mkdir backup
  mv yourfile backup/
  rm -rf yourfile 
  git add .
  git commit
  git push
  mv ./backup/yourfile ./
  ```
  i.e. 在本地将这个文件移除（或备份到新的文件夹中），然后push到远程仓库中，以此移除远程仓库中的该文件，然后.gitignore规则即可正确作用于该文件  
  
