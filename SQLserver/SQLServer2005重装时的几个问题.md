---
一次在服务器上重装SQL05的经理  
---
SQLServer2005重装时遇到的几个问题  
  
http://blog.csdn.net/dd_zhouqian/article/details/7109501  
  
由于机器安装过sql2005，卸载后重新安装，每次到最后一步的时候都报“sql2005 执行安装向导期间出错”，  
于是百度谷歌一阵，发现有如下解决方案  
  
执行安装向导期间出错，有关详细信息，您可以查看安装日志和/或单击帮助按钮。  
  
1）添加/删除程序中彻底删除sql server。  
  
2）将没有删除的sql server目录也删除掉。  
  
3）打开注册表编辑器，在HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager中找到PendingFileRenameOperations项目，并删除它。这样就可以清除安装暂挂项目。  
  
4）删除注册表中跟sql server相关的键。  
  
其实估计只要做第3步就可以搞定，这样就可以清除安装暂挂项目。自己是先走了1，2，4，最后做了3才搞定。  
所以估计3才是最关键的。  
  
如果上面还是不能得到解决  
  
那么再试下下面的:  
  
将以下两个从注册表中删除，一定可以解决SQL挂起问题：  
一、开始\运行\输入regedit回车  
+HKEY_LOCAL_MACHINE  
+SYSTEM  
+CurrentControlSet  
+Control  
+Session Manager下的FileRenameOperations删掉  
二、+HKEY_LOCAL_MACHINE  
+SOFTWARE  
+Microsoft  
+Windows  
+CurrentVersion  
+Setup  
+ExceptionComponents下的东西全部删掉如：  
{077ACEC7-979C-40AB-9835-435BA1511E0D}  
{30C7234B-6482-4A55-A11D-ECD9030313F2}  
{3FDF25EE-E592-4495-8391-6E9C504DAC2B}  
{60204BB3-7078-4F70-8F69-68297621941C}......  
总之有几项,就删几项,删掉后重启,再装SQL Server  
  
把HKEY_CURRENT_USER\Software\Microsoft\Microsoft SQL Server，  
和HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Microsoft SQL Server全部删掉，  
(注意要把Microsoft SQL Server文件夹整个删掉),然后重起。  
再装就应该没有问题了  
  
于是仔细按照以上步骤一遍又一遍的处理，每次都还是这个问题，每次我都怀疑我哪个步骤没处理干净，  
一直持续了2个小时，在一再确认我的处理是严格按以上步骤，还是存在问题后，我又再次找到类似如下资料：  
  
三，执行安装向导期间出错  
　　安装SQL 2005时，提示错误信息：执行安装向导期间出错  
  
　　①在d:盘根目录下建立sqlserver2005Setup目录，再在d:\sqlserver2005Setup\下创建2个目录\Servers\Tools  
  
　　②如果是2个cd的安装程序，将cd1上的所有文件拷贝到Servers目录下，将cd2目录下的所有文件拷贝到Tools下；  
  如果是一个dvd的安装程序，则分别把dvd上的Servers和Tools目录下的所有文件分别拷贝到d:\sqlserver2005Setup\Servers  
  和d:\sqlserver2005Setup\Tools再进行安装应该就没有问题。  
  
　　③还有需要注意的问题安装到上述错误的时候，SQL Server2005很多文件已经安装到硬盘上了，  
所有你重新安装的时候，可能会遇到a、提示磁盘空间不够目标磁盘中的空间不足，无法执行当前的   
SQL Server 安装。若要继续，请释放磁盘空间以安装所选功能、为此次安装选择较少的功能或将所  
选功能安装到另一个驱动器中。b、安装仍然失败所以建议你重新安装之前，到添加删除程序里把SQL  
 Server2005卸载  
  
于是又开始处理，又是重试n次，每次都还是这个问题，此时已经凌晨0点了，而我的是双CD版本，  
再最后失去耐心的情况下，我彻底愤怒了，不理会该错误，CD1安装到最后删除临时文件的时候出  
现该错误，直接忽略，直接找到CD2安装文件，继续安装，情况出现转机，五分钟过去后安装好了  
，居然，打开客户端工具连接本地SQL服务器，链接上了，创建数据库，成功的说，O my god，  
我宝贵的青春，宝贵的三个小时。在此说明一下该问题，希望能通过百度或者谷歌找到我这篇文章  
的兄弟，能最快速度解决问题，不要走我走过的老路，  
  
如果这篇文章对你有帮助，你可以留个脚印，哈哈，以此表彰一下我连夜发文的艰辛。  
  
发泄一下：Fuck bill 's mother，睡觉去了，nndx，什么都没干成  
  
发表于 2009年2月25日 1:29  
