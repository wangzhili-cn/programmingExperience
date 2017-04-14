---
常用包装类 
---  
> java中的常用包装类  
包装类主要提供了两大类方法：
  
1. 将本类型和其他基本类型进行转换的方法  
  
2. 将字符串和本类型及包装类互相转换的方法  

包装类（自动导入，让基本数据类型具有对象的特性）主要提供了两大类方法：  
（String,包装类都可以直接String或者Integer，Double,Float一个对象，包装类，系统自动导入）  
1. 将本类型和其他基本类型进行转换的方法 对象.类型Value();
装箱：把基本类型转换成包装类，使其具有对象的性质，又可分为手动装箱和自动装箱。
int i=10; Integer x=new Integer(i);//手动装箱 Integer y=i;//自动装箱
拆箱：把包装类对象转换成基本类型的值，又可分手动拆箱和自动拆箱。
Integer j=new Integer(8); int m=j.intValue();//手动拆箱 int n=j;//自动拆箱。
2. 将字符串和本类型及包装类互相转换的方法  
- int对应的包装类Integer  
- double->Double  
- float->Float  
- char->Character  
- byte->Byte  
- boolean->Boolean  
int i=Integer.getInteger("1");  

装箱：把基本类型转换成包装类，使其具有对象的性质，又可分为手动装箱和自动装箱;  
拆箱：和装箱相反，把包装类对象转换成基本类型的值，又可分为手动拆箱和自动拆箱.  
// 定义double类型变量  
double a = 91.5;  
// 手动装箱  
Double b = new Double(a);   
// 自动装箱  
Double c = a;   
// 定义一个Double包装类对象，值为87.0  
Double d = new Double(87.0);  
// 手动拆箱  
double e = d.doubleValue();  
// 自动拆箱  
double f = d;  
