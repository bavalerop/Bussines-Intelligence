SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[SedesArray](@sede varchar(max), @delimiter char(1), @trimSpace bit)
returns @table table(val varchar(4000))
as
begin
	declare @val varchar(4000)
	while len(@sede) > 0 
	begin
		set @val=left(@sede, isnull(nullif(charindex(@delimiter, @sede)-1, -1),len(@sede)))
		set @sede = substring(@sede,isnull(nullif(charindex(@delimiter, @sede),0),len(@sede))+1,len(@sede))
	
	if @trimSpace = 1 set @val= ltrim(rtrim(@val))
	insert into @table(val)
		values(@val)
	end
	return
end
GO