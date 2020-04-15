# gitignore规则
[参考：简书](https://www.jianshu.com/p/ea6341224e89)  

## 小朋友你是否有很多问号？  
- Q: 为什么执行了 `git rm -rf --cached .` 之后 `git add` 还会加入 `.gitignore`中已经ignore的文件？  
  A：因为此时远程仓库中存在这个文件，所以本地仓库会进行强制追踪；  
    
