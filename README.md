<!--
 * @Description: 简单描述一下这个脚本
 * @Autor: lxyok
 * @Date: 2019-09-25 17:40:30
 * @LastEditors: lxyok
 * @LastEditTime: 2019-09-27 12:31:17
 -->
# Git笔记

## 创建分支   

#### 查看分支：   git branch  
#### 查看所有分支： git branch -a   
#### 创建分支：git branch <name>  
#### 创建+切换分支：git checkout -b <name>或者git switch -c <name>  
#### 合并某分支到当前分支：git merge <name>  
## 删除分支
#### 删除本地分支
`git branch -d <BranchName>`
#### 删除远程分支
`git push origin --delete <BranchName>`
#### 查看删除后分支
`git branch -a`
## 删除文件
#### 删除文件 git rm 文件名
#### 在工作区想撤销
- git checkout -- file。
#### 提交到了暂存区  撤消操作  
- git reset --hard HEAD^

## git远端仓库  
#### 从云获取信息（如果只有一个库 那么就可以 不要写 origin master ）   
``` git
git pull origin master   名字  分支
```    
#### 上传到云（如果只有一个库 那么就可以 不要写 origin master ）   
``` git
git push -u origin master
```