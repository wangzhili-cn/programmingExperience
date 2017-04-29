下载tomcat linux的包，地址：http://tomcat.apache.org/download-80.cgi，我们下载的版本是8.0  
  
因为tomcat的安装依赖于Java jdk，所以我们需要在判断linux系统下面是否安装jdk  
b.1 使用（Xshell）连接到Linux系统下面  
b.2 输入命令：java -version，如果显示jdk版本号，则证明已经安装，如果不显示，则证明没有安装  

将上传的Tomcat8.0解压，解压之后重命名为tomcat  
d.1 tar -zxv -f apache-tomcat-8.0.29.tar.gz   
d.2 mv apache-tomcat-8.0.29 tomcat  
d.3 cd tomcat  
  
解析完成后即可以启动Tomcat，检查是否安装成功，命令如下  
/usr/local/kencery/tomcat/bin/startup.sh  

启动成功。这时候我们可以在windows下面使用http://ip:8080访问，如能够显示Tomcat的主页，则表示不需要进行任何操作了  

如不能显示，则需要在Linux中开放防火墙的8080端口。  
f.在Linux下面的防火墙里面开放8080端口 会用命令如下：  
f.1  vim /etc/sysconfig/iptables  
f.2  打开之后按键盘（i）进入编辑模式，写入开发8080端口，如图所示：  
  
写完之后我们按键盘（ESC）按钮退出，然后按（:wq）保存并且关闭Vim。  
g.之后重启防火墙,命令如下：  
service iptables restart   

停止Tomcat的命令是：/usr/local/tomcat/bin/shutdown.sh  

> 解决manageapp的403错误  
  
在打开的xml配置文件最后面写入下面这段配置文件之后保存并且退出即可。  
<role rolename="admin-gui"/>  
<role rolename="manager-gui"/>  
<user username="tomcat" password="tomcat" roles="manager-gui,admin-gui"/>  


IPv4和IPv6的本机环回地址，所以这也解释了，为什么我们本机可以访问管理界面，但是其他机器确是403。  
找到原因了，那么修改一下这里的正则表达式即可，我们修改为所有人都可以访问，那么改成这样就可以：  
xml文件修改 antiResourceLocking="false" privileged="true" Valve className="org.apache.catalina.valves.RemoteAddrValve" allow="^.*$"  

