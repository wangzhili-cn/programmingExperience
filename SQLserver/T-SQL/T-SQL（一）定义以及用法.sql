--DML 数据操作语言 IDUS
--DDL 数据定义语言 
--数据库不区分大小写
--结构化语言
create view UserInfo_V
as
--查询语句
select * from UserInfo
go

select * from [dbo].[UserInfo_V]  --只需调用视图名称,减少网络流量

--alert view UserInfo_V
--as
----查询语句
--select * from UserInfo  where id=3 order by desc
--视图中不能进行排序 本身视图就是按照一定规则查询出来的
--列名重复  order by  视图无法避免主外键列名一样

--变量 存储数据   建议的命名为驼峰法 不能以数字开头
--nvarchar为数据库微软默认字符串类型
declare @name nvarchar(50)
--赋值
--set      固定值
--select   查询赋值
select * from UserInfo
print(@name)

--select * into  table from  table2  批量增加数据到table     这一条要求 table1表是不存在的
--insert into table select * from table2                      这一条要求 table1表是存在的 

set @name='点点'

--if(1=1)   --true   0为假非0为真？不适用SQL  if这里必须嘚是一个表达式得出一个bool值
--begin
--       print("点点")   --begin end之间必须得要有一个语句块
--end

 
if(@name='垫垫')   --true   0为
begin
       print("点点") 
end
else
begin
print('点点')
end
go

select * from UserInfo

declare @name nvarchar(50)
declare @pwd nvarchar(50)
declare @count int
set @name='admin'
set @pwd='123456'
select @count=COUNT(1) from UserInfo where UserName=@name
if(@count>0)
begin
   select @count=COUNT(1) from UserInfo where UserName=@name and UserPwd=@pwd
   if(@count>0)
   begin
    print('欢迎您登陆'+@name)
   end 
   else
   begin
   print('您的密码输入不正确！')
   end
end
else
begin
print('此用户名不存在！'+@name)
end
go

--隐式循环
--declare @name nvarchar(50)
--select @name +=UserName from UserInfo
--print(@name)
--等价于 null+=UserName

declare @name nvarchar(50)
--select @name=''
set @name=''   --初始值
select @name +=UserName+',' from UserInfo
print(@name)

select UserName+',' from UserInfo
go
--循环
declare @num int
set @num=0
while(@num<=10)
begin
insert into UserInfo values('ceshi'+Convert(nvarchar(50),@num),'qqq')

set @num+=1
end

--int转换为字符串类型
--convert(int,'1')
insert into UserInfo values('ceshi'+Convert(nvarchar(50),'1'),'qqq')
go
--SQL强制类型转换
--Convert(int,'1')

select Convert(nvarchar(50),'1')



go
--声明固定长度流水号
declare @liushuihao nvarchar(50)
set @liushuihao='GD201604-000101'
--最后生成流水号
declare @shengliushuihao nvarchar(50)

--截断获取头GD
declare @toubianhao nvarchar(50)
set @toubianhao=LEFT(@liushuihao,2)
--截断获取尾部编号000001
declare @weibianhao nvarchar(50)
set @weibianhao=RIGHT(@liushuihao,6)
--截断获取年份2016去掉前面的GD和后面的尾
declare @year nvarchar(50)
set @year=LEFT(RIGHT(@liushuihao,13),4)
--截断获取月份04
declare @month nvarchar(50)
set @month=LEFT(RIGHT(@liushuihao,9),2)
--将'000001'转换为int方法 select Convert(int,'000001')
--判断年份与月份是否与本天年月相对应，如果是直接流水号编号加一否则取该年月重新输出新的流水号
if(@year=YEAR(GETDATE()))and(@month=MONTH(GETDATE()))
begin
select @weibianhao=Convert(int,@weibianhao)+1
set @weibianhao=right('00000'+Convert(nvarchar(50),@weibianhao),6)
set @shengliushuihao=@toubianhao+@year+@month+'-'+@weibianhao
print(@shengliushuihao)
end
--否则取该年月重新输出新的流水号 未编号为1的
else
begin
set @weibianhao='000001'
set @year=YEAR(GETDATE())
set @month=right(('0'+MONTH(GETDATE())),2)
print(@month)
set @shengliushuihao=@toubianhao+@year+@month+'-'+@weibianhao
print(@shengliushuihao)
end


