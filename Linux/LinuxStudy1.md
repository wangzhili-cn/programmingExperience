---
linux达人养成计划1
---
> linux命令格式  
1.起始符：  
[root@localhost ~]#  
root 当前登录用户  
localhost 主机名  
~ 当前所在目录（家目录）  
#超级用户的提示符  
  
2.ls命令选项：  
ls -a 显示所有文件，包括隐藏文件  
ls -l 显示详细信息  
ls -d 查看目录属性  
ls -h 人性化显示文件大小  
ls -i 显示inode  
  
3.文件权限（10位），第一位为文件类型，后面每3位一组  
-rw-r--r--  
-文件类型（-文件 d目录 l软链接目录）  
rw- u所有者  
r-- g所属组  
r-- o其他人  
r读 w写 x执行  
  
-rw-r--r--. 1 root root 1207  
.代表ACL权限 1应用计数  
在linux中“.”开头的文件是隐藏文件。  
  
4.# 超级用户的提示符 ￥普通用户的提示符 ~ 代表当前目录  
