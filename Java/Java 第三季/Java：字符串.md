---
java中的字符串
---  
> java中的字符串  
- java中字符串无处不在，如登录时输入的登陆名密码等  
- 在 Java 中，字符串被作为 String 类型的对象处理。 String 类位于 java.lang 包中。  
- 默认情况下，该包被自动导入所有的程序。    
- String s1;申明一个string类型的s1，即没有在申请内存地址，更没有在内存任何指向引用地址；  
- String s2=null;申明一个string类型的s2，同时在内存里申请了一个地址，但是该地址不指向任何引用地址；  
- String s3="";申明一个string类型的s3，既在内存里申请了地址，该地址又指向一个引用该字符串的引用地址；  
- String s4=new String();同理s3;  
- 虽然new String()与""值一样，但是内存地址不一样。  
- 一般来说 字符串的使用 最好用String str = "";语句，可以防止后面的程序因引用地址混乱而找不到的异常！  
- String s = null;String s;劲量少用！能不用就不要使用！  

> java中字符串的不变性  
- String 对象创建后则不能被修改，是不可变的，所谓的修改其实是创建了新的对象，所指向的内存空间不同。  
String 对象创建后则不能被修改，是不可变的，所谓的修改其实是创建了新的对象，所指向的内存空间不同。  
1、 通过 String s1="爱慕课"; 声明了一个字符串对象， s1 存放了到字符串对象的引用，常量字符串存储在堆内存中，  
s1只是对存放了到字符串的引用,通过 s1="欢迎来到："+s1; 改变了字符串 s1 ，其实质是创建了新的字符串对象，  
变量 s1 指向了新创建的字符串对象,即使s1指向了另一块堆内存。  
2、 一旦一个字符串在内存中创建，则这个字符串将不可改变。如果需要一个可以改变的字符串，  
我们可以使用StringBuffer或者StringBuilder（后面章节中会讲到）。  
3、 每次 new 一个字符串就是产生一个新的对象，即便两个字符串的内容相同，  
使用 ”==” 比较时也为 ”false” ,如果只需比较内容是否相同，应使用 ”equals()” 方法（前面条件运算符章节讲过哦~  

> String a="a" 与 String a=new String("a");的区别  
String a = new String("aa")，代表在堆内存中，创建了一个字符串对象，变量a指向该对象，而该对象又指向在常量池中的字符串常量。  
而String a = "aa"代表直接由变量a指向常量池中的字符串，省去了中间的堆内存中的对象，因为new对象时，都会在堆中创建对象。  
这就像如果有：  
String s1 = "hello";   
String s2 = "hello";  
那么  
System.out.println(s1==s2);  
结果为true，因为他们的地址值是一致的，都指向常量池中的字符串常量。  
而  
String s1 = new String("hello");  
String s2 = new String("hello");  
System.out.println(s1==s2);  
结果则是false，因为他们都在堆中建立了对象，而对象之间的地址值不同  
- 常量池概念  
第二个。会判拿字符串池 ，有的话，就直接拿过来，没有的话，就放进去。  
地址不一样。  
就是false。  

> String类常用方法  
- int length() 返回当前字符串的长度  
- int indexOf(int ch) 查找ch字符在该字符串中第一次出现的位置  
- int indexOf(String str) 查找str子字符串在该字符串中第一次出现的位置  
- int lastIndexOf(int ch) 查找ch字符在该字符串中最后一次出现的位置  
- int lastIndexOf(String str) 查找str子字符串在该字符串中最后一次出现的位置  
- String substring(int beginIndex) 获取从beginIndex位置开始到结束的子字符串  
- String substring(int beginIndex, int endIndex) 获取从beginIndex位置开始到endIndex位置的子字符串  
- String trim() 返回去除了前后空格的字符串  
- boolean equals(Object obj) 将该字符串与制定对象比较，返回true或false  
- String toLowerCase() 将字符串转换为小写  
- String toUpperCase() 将字符串转换为大写  
- char charAt(int index) 获取字符串中指定位置的字符  
- String[] split(String regex, int limit) 将字符串分割为子字符串，返回字符串数组  
- byte[] getBytes() 将该字符串转换为byte数组  

> String类常用方法2  
- 对于string自己使用了.length编译错误，然后看了下参考答案，不解，上网查了下.length,.length(),size()的区别，  
答案如下：  
1. java中的length属性是针对数组说的,比如说你声明了一个数组,想知道这个数组的长度则用到了length这个属性.  
2. java中的length()方法是针对字符串String说的,如果想看这个字符串的长度则用到length()这个方法.  
3. java中的size()方法是针对泛型集合说的,如果想看这个泛型有多少个元素,就调用此方法来查看!  

Object类中  
equal()方法比较的是对象的引用是否指向同一块内存地址  
  
String类中  
==: 判断两个字符串在内存中首地址是否相同，即判断是否是同一个字符串对象  
  
equals(): 比较存储在两个字符串对象中的内容是否一致  
注意：Object类中是equal()方法；String类中是equals()，差了一个s  

- 也可以用String类的split方法将字符串分割成子字符串数组，然后循环遍历数据  

> StringButter类(StringBuilder 类)  
在Java中，除了可以使用 String 类来存储字符串，还可以使用 StringBuilder 类或 StringBuffer 类  
存储字符串，其中：  
（1）String 类具有是不可变性：多个字符串进行拼接了以后产生一个新的临时变量并指向一个新的对象或新的地址。  
（2）StringBuffer 是线程安全的，而 StringBuilder 则没有实现线程安全功能，所以性能略高。  

如果需要创建一个内容可变的字符串对象，应优先考虑使用 StringBuilder 类。  
StringBuilder 对象，用来存储字符串，并对其做了追加和插入操作。  
这些操作修改了 str 对象的值，而没有创建新的对象，这就是 StringBuilder 和 String 最大的区别。  

> StringBuilder类（常用方法）  
java 中的 StringBuilder 类的常用方法：  
1. str.append("abc") 追加字符串 abc  
2. str.toString();转换为string对象  
3. str.insert(num,"abc")在字符串num位置(从左到右数num个字符后，添加)添加 abc 内容  
4. str.length()  
