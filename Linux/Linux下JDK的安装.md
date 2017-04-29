uname -a 查看本机linux为64位还是32位  
84_64为64位 i686和i386内核为32位  

下载JDK，(Oracle官网)地址：http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html  

上传的jdk解压，解压之后重命名为jdk  
d.1 tar -zxv -f  jdk-8u65-linux-i586.gz  
d.2 mv jdk1.8.0_65  javajdk  
d.3 cd javajdk  

jdk已经全部完成安装了，接下来就是更重要的一步：配置环境变量  
JAVA_HOME=/usr/local/kencery/javajdk  
PATH=$JAVA_HOME/bin:$PATH  
CLASSPATH=$JAVA_HOME/jre/lib/ext:$JAVA_HOME/lib/tools.jar  
export PATH JAVA_HOME CLASSPATH  

备注:根据上面的配置信息，我们既可以将环境变量的配置完成  
，需要注意的是，PATH在配置的哦时候，一定要把AVA_HOME/bin放在最前面，  
不然使用java命令式，系统会找到以前的JAVA，在不往下找了，这样java这  
个可执行文件运行的目录其实不在$JAVA_HOME/bin下，而在其它目录下，  
会造成很大的问题。  
a.3 写完之后我们按键盘（ESC）按钮退出，然后按（:wq）保存并且关闭Vim。  

b.配置完成之后，最重要的一步就是使文件立即生效：命令如下：  
source /etc/profile让profile  

上面所有的步骤完成之后，这时候我们需要检查是否安装成功，输入如下命令，如图所示：  
a.1 java -version  
a.2 echo $JAVA_HOME  

可参考博客 http://www.cnblogs.com/hanyinglong/p/5025635.html
