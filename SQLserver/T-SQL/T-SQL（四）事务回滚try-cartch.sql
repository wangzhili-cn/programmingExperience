--������ݸ����ûع�
create proc P_InserRoomReservationInfo
@G_ID int,
@R_No nvarchar(50),
@R_RePerson nvarchar(50),
@R_CarNo nvarchar(50),
@R_InTime nvarchar(50),
@sing int output,
@msg nvarchar(50) output

as
begin
     declare @num int --�ۼƴ���ֵ
	 set @num=0
     begin tran
	 begin try
		 insert into [dbo].[RoomReservationInfo] values(@G_ID,@R_No,@R_RePerson,@R_CarNo,@R_InTime)
		 set @num+=@@ERROR
		 update [dbo].[GuestRoomInfo] set G_State='��ס��' where G_ID=@G_ID
		 set @num+=@@ERROR     -- set @num+=@@ERROR�����if�����ۼ��ж��кܶ�ô�
     end try
	 begin catch 
	 print('���쳣��')
	 end catch
	 --�ع� �����ύ
	 if(@num>0)
		begin
		print('�д���')
		set @sing=0
		set @msg='����ʧ�ܣ�'
		rollback
		end
		else
		begin
		set @sing=1
		set @msg='�����ɹ���'
		print('�޴���')
		commit
	    end
end


go
declare @G_ID int
declare @R_No nvarchar(50)
declare @R_RePerson nvarchar(50)
declare @R_CarNo nvarchar(50)
declare @R_InTime nvarchar(50)
declare @num int
declare @sing int
declare @msg nvarchar(50)
set @num=0
set @G_ID=1
set @R_No='KF201605-000008'
set @R_RePerson='wang'
set @R_CarNo='123456789'
set @R_InTime=GETDATE()

exec [dbo].[P_InserRoomReservationInfo] @G_ID,@R_No,@R_RePerson,@R_CarNo,@R_InTime,@sing  output,@msg  output

print(@sing)
print(@msg)

--@@ERROR����intֵ �����8152�������ƽضϣ� errorֵ�ᱻ��һ��ֵ���ǵ�



go
declare @G_ID int
declare @R_No nvarchar(50)
declare @R_RePerson nvarchar(50)
declare @R_CarNo nvarchar(50)
declare @R_InTime nvarchar(50)
declare @num int

set @num=0
set @G_ID=1
set @R_No='KF201605-000008'
set @R_RePerson='wang'
set @R_CarNo='123456789'
set @R_InTime=GETDATE()

begin tran
--��׽�쳣
	begin try
		insert into [dbo].[RoomReservationInfo ] values(@G_ID,@R_No,@R_RePerson,@R_CarNo,@R_InTime)
		set @num+=@@ERROR
		update [dbo].[GuestRoomInfo] set G_State='��ס��' where G_ID=1
		set @num+=@@ERROR
	end try
	begin catch 
	print('���쳣��')
	end catch

if(@num>0)
begin
print('�д���')
rollback
end
else
begin
print('�޴���')
commit
end

--���κ��� �����е�try catch�ǳ��������� ���ݿ���Ҳ�ܲ�׽�쳣


--һ�ű������洢���� �Զ�����

update [dbo].[GuestRoomInfo] set G_State='����'


update [dbo].[GuestRoomInfo] set G_State='����' where [G_ID]=1
select * from [dbo].[GuestRoomInfo]