---
Java中的方法
---  
> 如何定义 Java 中的方法  
- 所谓方法，就是用来解决一类问题的代码的有序组合，是一个功能模块。  
- 访问修饰符：方法允许被访问的权限范围， 可以是 public、protected、private 甚至可以省略   
- 返回值类型：方法返回值的类型，如果方法不返回任何值，则返回值类型指定为 void ；  
  如果方法具有返回值，则需要指定返回值的类型，并且在方法体中使用 return 语句返回值  
- 方法名：定义的方法的名字，必须使用合法的标识符  
- 数列表：传递给方法的参数列表，参数可以有多个，多个参数间以逗号隔开，每个参数由参数类型和参数名组成，以空格隔开  
- 根据方法是否带参、是否带返回值，可将方法分为四类：
  1. 无参无返回值方法  
  2. 无参带返回值方法  
  3. 带参无返回值方法  
  4. 带参带返回值方法  
- 要在main方法中调用print方法，首先要声明并实例化对象！因为类是抽象的  
具体操作是 类名称（HelloWorld) 对象名称（test) elloWorld  test; //声明了  
然后通过关键字new分配空间   test = new HelloWorld();//分配空间了  
合成一起就是   HelloWorld test = new HelloWorld();//声明并实例化  
最后调用方法的格式是：对象（test）.方法（print）test.print    
```java
public class HelloWorld {
    
    //定义了一个方法名为 print 的方法，实现输出信息功能
    public void print() {
		System.out.println("Hello World");
	}
    
    public static void main(String[] args){
        
        //在 main 方法中调用 print 方法
        HelloWorld test=new HelloWorld();
        test.print();
    }
}
```

> 无参无返回值方法  
- 调用方法:  对象名.方法名();  
1. 使用 HelloWorld hello = new HelloWorld(); 创建对象  
2. 通过 对象名.方法名( ) 的形式调用方法  
3. 如果方法没有返回值，则指定为 void  
```java
java中无参无返回值方法使用：
public     void       show(){
        返回值类型   方法名
     System.out.println("");
            方法体
}
```  

> 无参带返回值方法  
####不容忽视的“小陷阱”：####  
1. 如果方法的返回类型为 void ，则方法中不能使用 return 返回值！  
2. 方法的返回值最多只能有一个，不能返回多个值  
3. 方法返回值的类型必须兼容，例如，如果返回值类型为 int ，则不能返回 String 型值  

> 带参无返回值方法  
####不容忽视的“小陷阱”：####  
1. 调用带参方法时，必须保证实参的数量、类型、顺序与形参一一对应  
2. 调用方法时，实参不需要指定数据类型.  
3. 方法的参数可以是基本数据类型，如 int、double 等，也可以是引用数据类型，如 String、数组等  
4. 当方法参数有多个时，多个参数间以逗号分隔  

> 带参带返回值方法  
- 如果方法既包含参数，又带有返回值，我们称为带参带返回值的方法。  
```java
public int sort(  int[] scores )

{		

Arrays.sort(scores);		

System.out.println(Arrays.toString(scores));		        

//返回数组中元素的个数      

return  scores.length;	

}
```
