--DML ���ݲ������� IDUS
--DDL ���ݶ������� 
--���ݿⲻ���ִ�Сд
--�ṹ������
create view UserInfo_V
as
--��ѯ���
select * from UserInfo
go

select * from [dbo].[UserInfo_V]  --ֻ�������ͼ����,������������

--alert view UserInfo_V
--as
----��ѯ���
--select * from UserInfo  where id=3 order by desc
--��ͼ�в��ܽ������� ������ͼ���ǰ���һ�������ѯ������
--�����ظ�  order by  ��ͼ�޷��������������һ��

--���� �洢����   ���������Ϊ�շ巨 ���������ֿ�ͷ
--nvarcharΪ���ݿ�΢��Ĭ���ַ�������
declare @name nvarchar(50)
--��ֵ
--set      �̶�ֵ
--select   ��ѯ��ֵ
select * from UserInfo
print(@name)

--select * into  table from  table2  �����������ݵ�table     ��һ��Ҫ�� table1���ǲ����ڵ�
--insert into table select * from table2                      ��һ��Ҫ�� table1���Ǵ��ڵ� 

set @name='���'

--if(1=1)   --true   0Ϊ�ٷ�0Ϊ�棿������SQL  if�������N��һ�����ʽ�ó�һ��boolֵ
--begin
--       print("���")   --begin end֮������Ҫ��һ������
--end

 
if(@name='���')   --true   0Ϊ
begin
       print("���") 
end
else
begin
print('���')
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
    print('��ӭ����½'+@name)
   end 
   else
   begin
   print('�����������벻��ȷ��')
   end
end
else
begin
print('���û��������ڣ�'+@name)
end
go

--��ʽѭ��
--declare @name nvarchar(50)
--select @name +=UserName from UserInfo
--print(@name)
--�ȼ��� null+=UserName

declare @name nvarchar(50)
--select @name=''
set @name=''   --��ʼֵ
select @name +=UserName+',' from UserInfo
print(@name)

select UserName+',' from UserInfo
go
--ѭ��
declare @num int
set @num=0
while(@num<=10)
begin
insert into UserInfo values('ceshi'+Convert(nvarchar(50),@num),'qqq')

set @num+=1
end

--intת��Ϊ�ַ�������
--convert(int,'1')
insert into UserInfo values('ceshi'+Convert(nvarchar(50),'1'),'qqq')
go
--SQLǿ������ת��
--Convert(int,'1')

select Convert(nvarchar(50),'1')



go
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


