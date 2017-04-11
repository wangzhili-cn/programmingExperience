---
流程控制语句
---  
> if判断
```java
public class HelloWorld{
    public static void main(String[] args){
         int one=20;
        if(one%2=0){
            System.out.println ("one是偶数 ");
```  
- = 赋值 == 等于  
- 如果 if 条件成立时的执行语句只有一条，是可以省略大括号滴！但如果执行语句有多条，那么大括号就是不可或缺的喽~~  

> ifelse  
```java
public class HelloWorld{
     public static void main(String[] args){
        int age=18;
        if (age>=18){
             System.out.println("成年");
       }else{
            System.out.println("未成年");
        }
    }
}
```  

> 多重ifelse  
```java
public class HelloWorld{
     public static void main(String[] args){
          int age=25;
        if (age>60){
             System.out.println("老年");
          }else if (60>=age>40){
             System.out.println("中年");
          }else if (40>=age>=18){
             System.out.println("青年");
         } else {
             System.out.println("少年");
           }
   }
 }
 ```  
 
 > 嵌套 if  
 ```java
 public class HelloWorld {
    public static void main(String[] args) {
		int score = 95;
		String sex = "女";
        if(score>80){
            if(sex.equals("女")){
                System.out.println("进入女子组决赛");
            }else{
                System.out.println("进入男子组决赛");
            }
        }else{
            System.out.println("未进入决赛"); 
            
            }
	}
}
```

> switch语句  
1. switch 后面小括号中表达式的值必须是整型或字符型  
2. case 后面的值可以是常量数值，如 1、2；也可以是一个常量表达式，如 2+2 ；但不能是变量或带有变量的表达式，如 a * 2  
3. case 匹配后，执行匹配块里的程序代码，如果没有遇见 break 会继续执行下一个的 case 块的内容，直到遇到 break 语句或者 switch 语句块结束  
4. 可以把功能相同的 case 语句合并起来 case 1: case2:  syso  
5. default 块可以出现在任意位置，也可以省略  
  switch case break default  
  
> while语句  
- Java 常用的 3 种循环： while 、 do...while 、 for  
- 特点：先判断，后执行  
  循环语句  
  while(判断条件)｛  
    循环操作  
  ｝  
  
> do...while循环  
- 特点： 先执行，后判断  
- do...while 语句保证循环至少被执行一次！  
- do{}while();  

>  for循环  
- 三种循环可以相互替换。  
-  for 关键字后面括号中的三个表达式必须用 “;” 隔开，三个表达式都可以省略，但 “;” 不能省略。   
  - 省略“循环变量初始化”，可以在 for 语句之前由赋值语句进行变量初始化操作  
  - 省略“循环条件”，可能会造成循环将一直执行下去，也就是我们常说的“死循环”现象在编程过程中要  
  避免“死循环”的出现，因此，对于上面的代码可以在循环体中使用 break 强制跳出循环，   
- 省略“循环变量变化”，可以在循环体中进行循环变量的变化，
  for 循环变量初始化和循环变量变化部分，可以是使用 “,” 同时初始化或改变多个循环变量的值，
  代码中，初始化变量部分同时对两个变量 i 和 j 赋初值，循环变量变化部分也同时对两个变量进行变化  
- 循环条件部分可以使用逻辑运算符组合的表达式，表示复杂判断条件，但一定注意运算的优先级  

> Java循环跳转语句之 break  
  - break 跳出循环  
  
> Java循环跳转语句之 continue  
- continue:结束本次循环，直接进入下一次循环。  
- 判断奇偶数 i%2！=0 看除以二是否为零  

> 多重循环  
- 外层循环每执行一次，内层循环要执行一圈。  

 
