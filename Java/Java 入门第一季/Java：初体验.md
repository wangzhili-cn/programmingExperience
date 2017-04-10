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
