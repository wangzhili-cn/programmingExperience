--set赋值是附一个局部值
--select 赋值在花括号中为全局变量
--字符串函数复习
 select cast(1 as varchar(50))
print('')
--varchar(50) 可变长度 varchar(max)
-- left('',2)
--right('',2)
--charindex('3','123456')
--str(3.1415,3,2)  将3.1415转换为字符串 截取包括小数点三位其中小数2位
--substring('123456','1','1')   charindex('3','123456') 配合使用
--ltrim (rtrim('      aaaaaa     '))   去除左边的空格 去除右边空格

--substring('123,456',charindex(',','123456')+1,3)
--substring(@str,charindex(',',@str)+1,len(@str)-charindex(',','@str'))
declare @str nvarchar(50)
set @str='123,1'
select substring(@str,charindex(',',@str)+1,len(@str)-charindex(',','@str'))

--SQL注入 '' -- ''解决SQL注入就是将输入值参数化

declare @stre varchar(50)
set @stre='GD201604-000001'
set @stre=left(@stre,(len(@stre)-1))
print(@stre)
--减去字段生成流水号



go
--计算函数
select POWER(10,5) --10的5次方
select abs(-1000)   --取绝对值
go
select RAND()      --SQL中随机的全是小数   其他的语言全是伪随机根据计算机内部的来的
select RAND()*100  --精度要高 重复的值要少
select round(1.2234,2)  --小数点后的2为后一位是否要四舍五入
select floor(0.3)   --一个车坐的人数  返回比x小的
select CEILING(2.1)  --上面相反



--时间的常用函数
select GETDATE()
select DATENAME(DAY,GETDATE())
select DATEPART(DAY,GETDATE()) 
select DATEADD(WEEK,1,GETDATE())     --select DATEADD(WEEK,-6,GETDATE())  
select DATEDIFF(MONTH,'2016-10-11','2016-11-01') --月份不一致得到的一个结果 算多少岁比较方便
select DAY(GETDATE())
select Month(GETDATE())
select YEAR(GETDATE())

--年    year yy,yyyy
--季度  quarter qq,q
--月份  month  mm，m

--时间的一个格式化
--将当前时间转化为字符串
Select CONVERT(varchar(100),GETDATE(),20)
--另一种时间格式
SELECT FORMAT(GETDATE(),'yyyy-MM-dd hh:mm:ss.ms')

go
declare @year nvarchar(50)
set @year=2015
declare @month nvarchar(50)
set @month=2
declare @time nvarchar(50)
set @time=CONVERT(datetime,CONVERT(nvarchar(50),@year)+'-'+CONVERT(nvarchar(50),@month))
print(@time)


go
declare @num1 float
set @num1=1.4    --1.15*10
select CEILING(@num1)--select CEILING(@num1+0.5)
select FLOOR(@num1+0.5)
print(@num1)



--年份月的天数计算
go
declare @year nvarchar(50)
set @year=2015
declare @month nvarchar(50)
set @month=2
declare @time datetime --将输入的年月转换为时间格式保存的time
--转换为时间类型
set @time=CONVERT(datetime,(CONVERT(nvarchar(50),@year)+'-'+CONVERT(nvarchar(50),@month)+'-'+'1'))
select CONVERT(varchar(100),@time,23)
--将当前年月第一天与下一个月的第一天之间间隔的天数就是两月份相隔的天数
select DATEDIFF(DAY,@time,(select DATEADD(MONTH,1,@time)))


go
--四舍五入
declare @num float
set @num=RAND()*10     --创建一个0-1的随机数*10便是1-10的小数随机数
print(@num)
set @num=CEILING((CONVERT(float,@num)-0.5))
print(@num)