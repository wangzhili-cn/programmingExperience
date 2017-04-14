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
