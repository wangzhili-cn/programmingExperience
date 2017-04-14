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
异常处理：  
一、try-catch（多catch块）-finally  
（1）try块：负责捕获异常，一旦try中发现异常，程序的控制权将被移交给catch块中的异常处理程序。  
【try语句块不可以独立存在，必须与 catch 或者 finally 块同存】  
（2）catch块：如何处理？比如发出警告：提示、检查配置、网络连接，记录错误等。  
执行完catch块之后程序跳出catch块，继续执行后面的代码。  
·编写catch块的注意事项：多个catch块处理的异常类，  
要按照先catch子类后catch父类的处理方式，因为会【就近处理】异常（由上自下）。  
（3）finally：最终执行的代码，用于关闭和释放资源等  
try(试着在){  
    （此段代码中）  
}  
catch(抓到)（这种错误）{  
    （然后处理）  
}  

> trycatch处理顺序，throw和throws  
- try{ return;}catch(){return;} finally{return;}  
- 程序执行try块中return之前（包括return语句中的表达式运算）代码；  
- 有异常：执行catch块中return之前（包括return语句中的表达式运算）代码；  
- 则再执行finally块，因为finally块中有return所以提前退出。  
- 无异常：则再执行finally块，因为finally块中有return所以提前退出。  
- finally中有return会吃掉异常的  

throw和throws的区别：  
1. throw在方法体内，后面跟的是异常类对象，并且只能有一个  
2. throws在方法声明后面，后面跟的是异常类名，可以有多个  

1. 不管有木有出现异常，finally块中代码都会执行；
2. 当try和catch中有return时，finally仍然会执行；
3. finally是在return后面的表达式运算后执行的（此时并没有返回运算后的值，而是先把要返回的值保存起来，
   不管finally中的代码怎么样，返回的值都不会改    变，仍然是之前保存的值），所以函数返回值是在finally执行前确定的；
4. finally中最好不要包含return，否则程序会提前退出，返回值不是try或catch中保存的返回值。

1. e.printStackTrace();——表示打印异常的具体信息，写在catch块中
2. -1为抛出异常的习惯写法
3. 如果方法中try,catch,finally中没有返回语句，则会调用这三个语句块之外的return结果
4. finally块无论如何，不管前面是正常还是异常，都要执行。
5. finally 在try中的return之后 在返回主调函数之前执行。
