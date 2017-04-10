---
Java入门基本概念
---  
> 核心概念  
- JDK:Java Development Kit(java开发工具包)  
- JRE:Java Runtime Environment(java运行时环境)  
- JVM:Java Virtual Machine(java虚拟机)  
  - JVM动态过程：源文件->编译器->字节码文件->解释器->计算机可看懂  
  - 源（代码）文件（myProgram.java）编译器（compiler）字节码文件（myProgram.class）解释器（interpreter）MyProgram
- JDK基于->JRE基于->JVM  
  - JDk（JRE（JVM））  
- 应用：SE EE ME  
  - Java SE 是Java的基础核心，它包括了面向对象、API、JVM等  
  - Java EE 是Java的企业版本，它包括了JSP、EJB、服务（service）等，主要用于大型的企业开发  
  - Java ME 主要用于嵌入式的开发，它主要应用于移动设备、游戏、通信等  

> Java开发环境搭建（JDK）  
- JDK官方下载地址：www.oracle.com/technetwork/java/javase/downloads  
- 环境变量  
  1. JAVA_HOME c（安装位置）：java/jdk/复制路径  
    - JAVA_HOME 配置JDK安装路径  
  2. PATH  系统自带/变量值最前加路径/(路径Java/jdk1.7/bin)   
    - PATH 配置JDK命令文件的位置  
  3. CLASSPATH  新建/.:/复制路径(jdk/lib/)   
    - CLASSPATH 配置类库文件的位置  
- lib 文件夹是库文件，里面的文件基本都是以jar为结尾的  
- JDK目录：  
  - bin -->.exe文件（命令文件）
  - lib -->.calss文件（类库文件）  
 
> 用记事本编写Java程序  
- java的跨平台就是因为字节码文件的存在  
- 使用记事本编写java程序  
  1. 编写JAVA源代码，文件以.java结尾。  
  2. 使用JAVAC命令将其编译(编译器：compller)成字节码文件(以.class结尾)。  
  3. 使用解释器（interpreter）将JAVA命令在电脑上呈现出来  
- 执行字节码文件时不能跟上字节码文件名（即不能跟上.class）  
- 可以通过dir在dos命令中查看  
- 编译方法:javac hellowword.java  
- .java的源文件，通过编译器（使用javac命令）生成字节码文件（.class），然后使用解释器（使用java命令）去解释运行字节码文件。  
```java
public class HelloWorld{
 public static void main (String[] args){
        System.out.println("welcome to imooc!");
  }
}
```  
- 执行一个class文件的正确命令 java class  

> 借助第三方工具提高开发效率:eclipse（IDE 集成开发环境）  
- Eclipse下载地址：http://www.eclipse.org/downloads/  
  - 32位或者 64位  
- Eclipse是绿色的，只需要解压缩就可以直接使用
1. 创建java项目  
2. 创建程序包  
3. 编写java源程序  
4. 运行java程序  
- 第一步，创建一个工程  
- 创建包的目的是便于程序的管理  
- main是整个程序的入口  

> eclipse的拓展-MyEclipse  
- MyEclipse是对Eclipse的扩展，是一个十分优秀的用于开发java,javaee的Eclipse插件集合。  
- MyEclipse的下载地址：http://www.my-eclipse.cn/  
- 创建包：名字可以是com.imooc.  

> 程序的移植（项目导入和导出）  
- 方法：导出：右键项目--Properties属性--Location地址位置--打开路径--拷贝项目。  
- 导入：在空白处右键--Import--General--Existing Projects into Workspace--Browse查找需要导入的文件。  
- Java程序是区分大小写的。  

> 勤奋的敲代码  
- java属于技术性比较强的技能，需要多练，多问，自己动手，调试错误，复习和总结。
- 学虽容易，学好不易，且学且珍惜。


