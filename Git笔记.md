<!--
 * @Description: 简单描述一下这个脚本
 * @Autor: lxyok
 * @Date: 2019-09-25 17:40:30
 * @LastEditors: Please set LastEditors
 * @LastEditTime: 2020-09-09 21:35:26
 -->
# Git笔记


## 设置用户名
#### git config --global user.name "Your Name"
#### git config --global user.email "email@example.com"
#### 注意git config命令的--global参数，用了这个参数，表示你这台机器上所有的Git仓库都会使用这个配置，当然也可以对某个仓库指定不同的用户名和Email地址。

#### git config --global user.name "lxyok" 
#### git config --global user.email "lxy30383503@gmail.com"

#### ssh-keygen -t rsa -C "lxy30383503@gmail.com"

#### ssh -T git@github.com

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
- git checkout -- file  
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

### 更新文件
```
git add .
git commit -m "git笔记"
git push origin master
```

### 创建一个本地库 然后传到云端
```git init
git add .
git commint -m "第一次提交"
git remote add origin git@gitee.com:lxyok/jsp.git

git remote add origin git@github.com:lxyok/js.git
git push -u origin master
git pull --rebase origin master
```