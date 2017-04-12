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

