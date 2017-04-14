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

> throw和throws的区别：  
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

> 自定义异常  
- 因为有了一个含参的构造器，所以系统不会自动生成一个无参的构造器，但有时候我们需要所以在写一个。  
java中的异常抛出
throw
throws----声明将要抛出何种类型的异常（声明）
          public void 方法名(参数列表)
                      throws 异常列表{
              //调用会抛出异常的方法或者：
               throw new Exception();
}
两个重要的关键字：throw和throws  
1.throws的异常列表可以是抛出一条异常，也可以是抛出多条异常，每个类型的异常中间用逗号隔开  
2.方法体中调用会抛出异常的方法或者是先抛出一个异常：用throw new Exception（）  
throw写在方法体里，表示“抛出异常”这个动作  
3.如果某个方法调用了抛出异常的方法，那么必须添加try catch语句去尝试捕获这种异常，  
或者添加声明，将异常抛出给更上一层的调用者进行处理  
4.自定义异常：  
class 自定义异常类 extends 异常类型｛｝  
上面的异常类型可以是Exception，也可以是其子类  
public class DrunkException extends Exception {      
      public DrunkException(){    	      
   }		  
       public  DrunkException(String message){    	   
               super(message);       
             }  
}  
一个定义抛出异常这个动作，另一个定义可能出现的异常。  

> java异常链  

只有Error，Exception，RuntimeException提供了带cause参数的构造器，其他的所有异常类只能通过initCause()来设置cause。  
所有Throwable的子类构造器中都可以接受一个cause对象作为参数。  
cause是异常原由，代表着原始异常。既可以在当前位置创建并抛出行的异常，也可以通过cause追踪到异常最初发生的位置。  
异常链是一种面向对象编程技术，指将捕获的异常包装进一个新的异常中并重新抛出的异常处理方式。  
原异常被保存为新异常的一个属性（比如cause）。这个想法是指一个方法应该抛出定义在相同的抽象层次上的异常，但不会丢弃更低层次的信息。  
把捕获的异常包装成新的异常，在新异常里添加原始的异常，并将新异常抛出，它们就像是链式反应一样，一个导致（cause）另一个  
这个想法是指一个方法应该抛出定义在相同的抽象层次上的异常，  
（将所有捕获到的异常包装为新的异常类，即定义在相同的抽象层次上抛出）但不会丢弃更低层次的信息。  
实现异常链功能的两种基本写法：  
```java
public class chainTest {

/**
* @param args
* Test1抛出喝大了异常
* Test2调用test1捕获了喝大了异常，并且包装成运行时异常，继续抛出
* main方法中调用test2尝试捕获test2方法抛出的异常
*/
public static void main(String[] args) {
try{	// TODO Auto-generated method stub
chainTest ct=new chainTest();
ct.Test2();}
catch(Exception e){
e.printStackTrace();
}
}public void Test1()throws DrunkException{
throw new DrunkException("喝车别开酒");

}
public void Test2(){
try{
Test1();
}catch( DrunkException e){
RuntimeException rte=new RuntimeException(e);
//rte.initCause(e);
e.printStackTrace();
throw rte;
}
}
}
```  
一下是对本节课几个难理解的代码句进行解释：  
(1):e.printStrackTrace();    作用是进行深层次的输出异常调用的流程  
(2):RunTimeException();   这是运行时异常，是所有java虚拟机正常操作期间可以被抛出异常的父类！  
(3):newExc.initCause(e);   这是一种对异常的一种包装技巧。  
initCause()的作用是保存原始的异常，当想要知道底层发生了什么异常的时候调用getCause()就能获得原始异常。  
这样就可以形成一个异常链!  
