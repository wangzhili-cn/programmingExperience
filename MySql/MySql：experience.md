---
mysql exprience
---
- DDL
  - DDL语句用语定义和管理数据库中的对象，如Create,Alter和Drop.  
  - DDL操作是隐性提交的！不能rollback  
- DML  
- DML(Data Manipulation Language)数据操纵语言命令使用户能够查询数据库以及操作已有数据库中的数据。  
- SQL是十分灵活的，如下：将一个表中的某个字段的信息导入另一个表中作为数据。  
  - INSERT INTO nbqa_sys_role_indicator (sys_role_id,indicator_id)  SELECT 1,id FROM nbqa_indicator  
  - 注意后面SQL中的select 1  

- 我们的数据库表中经常会使用id自增，但是每次清空表后id并不是从1开始计数，总是接着之前的进行自增，那么解决呢？  
    使用mysql的truncate命令，用法：truncate table 表名;  
    这样表的id自增就会变回从1开始自增了。  
