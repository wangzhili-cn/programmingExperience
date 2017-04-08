	--存储过程语法  alert更改 ALTER更改存储过程
	go
	ALTER proc P_login
	@name nvarchar(50),
	@pwd nvarchar(50),
	--参数  输入参数  输出参数 output
	@count int output
	as
	begin

	--select * from UserInfo

	--declare @name nvarchar(50)
	--declare @pwd nvarchar(50)

	--@count output
	--set @name='admin'
	--set @pwd='123'
	select @count=COUNT(1) from UserInfo where UserName=@name
	
	if(@count>0)
	begin
	   select @count=COUNT(1) from UserInfo where UserName=@name and UserPwd=@pwd
	   if(@count>0)
	   begin
	   set @count=1
		print('欢迎您登陆'+@name)
	   end 
	   else
	   begin
	   set @count=0
	   print('您的密码输入不正确！')
	   end
	end
	else
	begin
	set @count=0
	print('此用户名不存在！'+@name)
	end
	--print(@count)
	end
	--存储过程的执行用exec
	exec P_login 'admin','123',4



	--流水号存储过程

go
create proc P_numNO
as
begin
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
end

exec [dbo].[P_numNO]