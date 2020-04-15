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
  
## .gitignore规则：   
- 忽略`.gitignore`中的空行    
- 注释：`#`  
- 可以在前面添加正斜杠/来避免递归  
- 可以在后面添加正斜杠/来忽略文件夹，例如build/即忽略build文件夹。  
- 可以使用!来否定忽略，即比如在前面用了*.apk，然后使用!a.apk，则这个a.apk不会被忽略。  
- 匹配 >= 0 个字符：`*`  
- \[\]用来匹配括号内的任一字符，如\[abc\]，也可以在括号内加连接符，如\[0-9\]匹配0至9的数  
- ?用来匹配单个字符  
