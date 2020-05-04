- git commit 改用emacs 编辑器：  
    `git config --global core.editor "emacs -nw"`  

- 查找git add 命令 stage 的文件：  
    `git diff --name-only --cached`  
    ```bash
    man:
    --name-only
        Show only names of changed files.
    git diff --cached
        Changes between the index and your last commit.
    ```
    >(--staged is also available as an alias for --cached above in more recent git versions.)  <br><br>
    >"Combined together you get the changes between the index and your last commit and Show only names of changed files."  
