--set��ֵ�Ǹ�һ���ֲ�ֵ
--select ��ֵ�ڻ�������Ϊȫ�ֱ���
--�ַ���������ϰ
 select cast(1 as varchar(50))
print('')
--varchar(50) �ɱ䳤�� varchar(max)
-- left('',2)
--right('',2)
--charindex('3','123456')
--str(3.1415,3,2)  ��3.1415ת��Ϊ�ַ��� ��ȡ����С������λ����С��2λ
--substring('123456','1','1')   charindex('3','123456') ���ʹ��
--ltrim (rtrim('      aaaaaa     '))   ȥ����ߵĿո� ȥ���ұ߿ո�

--substring('123,456',charindex(',','123456')+1,3)
--substring(@str,charindex(',',@str)+1,len(@str)-charindex(',','@str'))
declare @str nvarchar(50)
set @str='123,1'
select substring(@str,charindex(',',@str)+1,len(@str)-charindex(',','@str'))

--SQLע�� '' -- ''���SQLע����ǽ�����ֵ������

declare @stre varchar(50)
set @stre='GD201604-000001'
set @stre=left(@stre,(len(@stre)-1))
print(@stre)
--��ȥ�ֶ�������ˮ��



go
--���㺯��
select POWER(10,5) --10��5�η�
select abs(-1000)   --ȡ����ֵ
go
select RAND()      --SQL�������ȫ��С��   ����������ȫ��α������ݼ�����ڲ�������
select RAND()*100  --����Ҫ�� �ظ���ֵҪ��
select round(1.2234,2)  --С������2Ϊ��һλ�Ƿ�Ҫ��������
select floor(0.3)   --һ������������  ���ر�xС��
select CEILING(2.1)  --�����෴



--ʱ��ĳ��ú���
select GETDATE()
select DATENAME(DAY,GETDATE())
select DATEPART(DAY,GETDATE()) 
select DATEADD(WEEK,1,GETDATE())     --select DATEADD(WEEK,-6,GETDATE())  
select DATEDIFF(MONTH,'2016-10-11','2016-11-01') --�·ݲ�һ�µõ���һ����� �������ȽϷ���
select DAY(GETDATE())
select Month(GETDATE())
select YEAR(GETDATE())

--��    year yy,yyyy
--����  quarter qq,q
--�·�  month  mm��m

--ʱ���һ����ʽ��
--����ǰʱ��ת��Ϊ�ַ���
Select CONVERT(varchar(100),GETDATE(),20)
--��һ��ʱ���ʽ
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



--����µ���������
go
declare @year nvarchar(50)
set @year=2015
declare @month nvarchar(50)
set @month=2
declare @time datetime --�����������ת��Ϊʱ���ʽ�����time
--ת��Ϊʱ������
set @time=CONVERT(datetime,(CONVERT(nvarchar(50),@year)+'-'+CONVERT(nvarchar(50),@month)+'-'+'1'))
select CONVERT(varchar(100),@time,23)
--����ǰ���µ�һ������һ���µĵ�һ��֮�����������������·����������
select DATEDIFF(DAY,@time,(select DATEADD(MONTH,1,@time)))


go
--��������
declare @num float
set @num=RAND()*10     --����һ��0-1�������*10����1-10��С�������
print(@num)
set @num=CEILING((CONVERT(float,@num)-0.5))
print(@num)