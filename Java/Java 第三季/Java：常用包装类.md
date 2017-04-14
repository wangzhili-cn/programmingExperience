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

> 基本类型同字符串之间的转换  
其中，基本类型转换为字符串有三种方法：
1. 使用包装类的 toString() 方法  
  
2. 使用String类的 valueOf() 方法  
  
3. 用一个空字符串加上基本类型，得到的就是基本类型数据对应的字符串  
基本类型转换为字符串有三种方法：  
1.包装类的toString()方法  
2.String的valueOf()方法  
3.用一个空字符串加上基本类型，得到的就是基本数据类型对应的字符串  
eg:int c=10;  
   String str1=Integer.toString(c);  
   String str2=String.valueOf(c);  
   String str3=c+" ";  
  
将字符串转换成基本类型有两种方法：  
1.包装类的parseXxx静态方法  
2.调用包装类的valueOf()方法转换为基本数据类型的包装类，会自动拆箱  
String str="8";  
int a=Integer.parseInt(str);  
int b=Integer.valueOf(str);  
  
ps:其它基本数据类型与字符串的相互转换方法都类似。  

> SimpleDateFormat格式化时间对象  
SimpleDateFormat 可以对日期时间进行格式化,(由于Date默认输出的时间格式不友好因此需要转换)  
如可以将日期转换为指定格式的文本，也可将文本转换为日期。  
1. 使用format()方法将日期转换为指定格式的文本  
Date d = new Date();  
SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//指定转换的目标格式，"yyyy-MM-dd HH:mm:ss"为预定义字符串。  
String today = s.format(d);//结果如：2014-06-11  09:55:48  
2. 使用parse()方法将文本转换为日期  
String day = "2014年02月14日 10:30:20";  
SimpleDateFormat s = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");//“yyyy年MM月dd日 HH:mm:ss” 指定了字符串的日期格式，调用 parse() 方法将文本转换为日期。  
Date date = s.parse(day);//结果如：Fri Feb 14 10:30:20 CST 2014  
注意：  
1、调用SimpleDateFormat对象的parse()方法时可能会出现转换异常，即ParseException，  
因此需要进行异常处理。  
2、指定日期格式中的月MM和小时HH必须大写，小写结果会不同的。  
3、使用Date 类时需要导入java.util包，使用SimpleDateFormat时需要导入java.text包。  

> Calendar 类的应用  
Calendar 类
1.通过调用 getInstance() 静态方法获取一个 Calendar 对象---对象已初始化  
Calendar c = Calendar.getInstance();  
2.通过调用 get() 方法获取日期时间信息  
int month=c.get(Calendar.MONTH)+1;----0表示1月份  
3.提供 getTime() 方法，用来获取 Date 对象  
Date date=c.getTime();----将Calender对象转换为Date对象  
4.通过 getTimeInMillis() 方法，获取此 Calendar 的时间值  
long time=c.getTimeInMillis();----获取当前毫秒  
```java
//Calendar c = Calendar.getInstance();
		java.util.Calendar c1=java.util.Calendar.getInstance();
		// 将Calendar对象转换为Date对象
		//Date date = c.getTime();
        java.util.Date date =c1.getTime();
		// 创建SimpleDateFormat对象，指定目标格式
		//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        java.text.SimpleDateFormat sdf1=new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		// 将日期转换为指定格式的字符串
		String now = sdf1.format(date);
		System.out.println("当前时间：" + now);
  ```
  
  > Math类操作数据  
Math类操作数据  
1、Math 类位于 java.lang 包中，包含用于执行基本数学运算的方法，  
Math 类的所有方法都是【静态方法】，所以使用该类中的方法时，可以直接使用类名.  
方法名，如： Math.round()。  
2、常用方法：  
· Math.abs()：取绝对值  
· Math.random()：随机返回[0,1）之间的一个double值，可*100 再 四舍五入 得到[0,100）的随机整数  
· Math.pow(a,b)：返回a的b次幂的值  
· Math.rand()：对浮点数进行四舍五入  
· Math.ceil()：返回大于参数的最小整数（double类型）  
· Math.floor()：返回小于参数的最大整数（double类型）  
· Math.max(a,b)：返回a,b中最大的数  
· Math.min(a,b)：返回a,b最小值  
