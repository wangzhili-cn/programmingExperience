---
Java异常与异常处理  
---  
> java异常简介  
异常体系结构  
1. 所有异常都继承于Throwable类，其下有两大子类：  
（1）Error类：错误，一般编程人员不太接触，如虚拟机错误、线程死锁。硬伤：使程序崩溃  
（2）Exception类：异常，编码、环境、用户输入等问题，其子类主要有：  
·非检查异常(运行时异常RuntimeException)：【由java虚拟机自动捕获】如空指针NullPointer、
越界ArrayIndexOutofBounds、错误类型转换ClassCast、算数异常Arithmetic等  
·检查异常CheckException：【需要手动添加捕获和处理语句】文件异常IO等  

> try{}catch{}finaly{}捕获异常  

