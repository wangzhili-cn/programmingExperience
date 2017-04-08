--多表数据更新用回滚
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
     declare @num int --累计错误值
	 set @num=0
     begin tran
	 begin try
		 insert into [dbo].[RoomReservationInfo] values(@G_ID,@R_No,@R_RePerson,@R_CarNo,@R_InTime)
		 set @num+=@@ERROR
		 update [dbo].[GuestRoomInfo] set G_State='入住中' where G_ID=@G_ID
		 set @num+=@@ERROR     -- set @num+=@@ERROR相对于if不断累加判断有很多好处
     end try
	 begin catch 
	 print('有异常！')
	 end catch
	 --回滚 或者提交
	 if(@num>0)
		begin
		print('有错误！')
		set @sing=0
		set @msg='开房失败！'
		rollback
		end
		else
		begin
		set @sing=1
		set @msg='开房成功！'
		print('无错误！')
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

--@@ERROR返回int值 错误号8152？二进制截断？ error值会被下一个值覆盖掉



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
--捕捉异常
	begin try
		insert into [dbo].[RoomReservationInfo ] values(@G_ID,@R_No,@R_RePerson,@R_CarNo,@R_InTime)
		set @num+=@@ERROR
		update [dbo].[GuestRoomInfo] set G_State='入住中' where G_ID=1
		set @num+=@@ERROR
	end try
	begin catch 
	print('有异常！')
	end catch

if(@num>0)
begin
print('有错误！')
rollback
end
else
begin
print('无错误！')
commit
end

--屏蔽红字 程序中的try catch非常消耗性能 数据库中也能捕捉异常


--一张表的事务存储过程 自动生成

update [dbo].[GuestRoomInfo] set G_State='空闲'


update [dbo].[GuestRoomInfo] set G_State='空闲' where [G_ID]=1
select * from [dbo].[GuestRoomInfo]