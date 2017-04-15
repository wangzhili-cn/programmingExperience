---
Java Skills
---  
- 清空console没有快捷键，有快捷方式->鼠标右键+R.  
- ctrl+shift+l 查看快捷键设置（eclipse所有快捷键设置）  
- 快捷键是alt+left和alt+right，也是方向键的alt+←和alt+→。即前进和后退  
- excuse返回的是数据库语句执行结果的返回，其中可以查到数据的select可返回true  
- 执行的DDL语句，没有返回数据，只是操作了数据，返回false  
- excuseQuery返回ResultSet  
- 只要生成jar文件就可以在装有java虚拟机上运行了  
- 1、JDBC中的这个参数  
    true：sql命令的提交（commit）由驱动程序负责  
    false：sql命令的提交由应用程序负责，程序必须调用commit或者rollback方法  
    2、当n个sql 视为一个整体（原子性），要么都执行，要么一个不执行时候  
    通过 setAutoCommit 进行控制。  
    setAutoCommit(false);  
    sql语句;  
    sql语句;  
    ......  
    commit();  

- ArrayList在没有指定泛型类的时候，Add的方法可以添加Object类型，但是AddAll方法就只能添加指定类型的对象了。。。  
    一个可以添加Object，另一个只能加Colletion指定类型的对象  
- instance→实例  
    of→属于  
    if(duixiang instanceOf Object)
    {
        system.out.plantln("true");
    }
- jsp和javascript 操作cookie 区别  
给你一个思考的方式：  
jsp：服务端执行  
js：客户端执行  
cookie：游走在客户端与服务端  
所以，你可以把cookie看成一种参数传递的方式，至于传递的方向，看你的需求了。  
cookie是http的内容范畴。  
如果你想把客户端生成的信息带到服务端，可以借助js写入cookie，发送请求时，请求头就会携带这部分信息给服务端。  
如果服务端有信息需要传到客户端，可以通过服务端的jsp来写入cookie，会通过http的响应带到客户端。  

- JavaSE是Java Standard Edtion的缩写，译成中文就是Java标准版，也是Java的核心。  
    无论是JavaEE(Java企业版)还是JavaME(Java微型版)(主要用于嵌入式设备)都是以JavaSE为基础。  
    相当于它就是Java的语法规则。  
