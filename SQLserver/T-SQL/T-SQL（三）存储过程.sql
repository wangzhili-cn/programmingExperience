	--�洢�����﷨  alert���� ALTER���Ĵ洢����
	go
	ALTER proc P_login
	@name nvarchar(50),
	@pwd nvarchar(50),
	--����  �������  ������� output
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
		print('��ӭ����½'+@name)
	   end 
	   else
	   begin
	   set @count=0
	   print('�����������벻��ȷ��')
	   end
	end
	else
	begin
	set @count=0
	print('���û��������ڣ�'+@name)
	end
	--print(@count)
	end
	--�洢���̵�ִ����exec
	exec P_login 'admin','123',4



	--��ˮ�Ŵ洢����

go
create proc P_numNO
as
begin
--�����̶�������ˮ��
declare @liushuihao nvarchar(50)
set @liushuihao='GD201604-000101'

--���������ˮ��
declare @shengliushuihao nvarchar(50)

--�ضϻ�ȡͷGD
declare @toubianhao nvarchar(50)
set @toubianhao=LEFT(@liushuihao,2)

--�ضϻ�ȡβ�����000001
declare @weibianhao nvarchar(50)
set @weibianhao=RIGHT(@liushuihao,6)

--�ضϻ�ȡ���2016ȥ��ǰ���GD�ͺ����β
declare @year nvarchar(50)
set @year=LEFT(RIGHT(@liushuihao,13),4)

--�ضϻ�ȡ�·�04
declare @month nvarchar(50)
set @month=LEFT(RIGHT(@liushuihao,9),2)

--��'000001'ת��Ϊint���� select Convert(int,'000001')
--�ж�������·��Ƿ��뱾���������Ӧ�������ֱ����ˮ�ű�ż�һ����ȡ��������������µ���ˮ��

if(@year=YEAR(GETDATE()))and(@month=MONTH(GETDATE()))
begin
select @weibianhao=Convert(int,@weibianhao)+1
set @weibianhao=right('00000'+Convert(nvarchar(50),@weibianhao),6)
set @shengliushuihao=@toubianhao+@year+@month+'-'+@weibianhao
print(@shengliushuihao)
end

--����ȡ��������������µ���ˮ�� δ���Ϊ1��
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