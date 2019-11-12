create database facebook
go
use facebook
go

create table persona(
idpersona int primary key identity(1,1),
nombre nvarchar(100) not null,
celular nvarchar(100) not null,
sexo nvarchar(100) not null,
fecha date not null,
correo nvarchar(100) not null,
contras nvarchar(50) not null);
go

create table post(
idpost int primary key identity(1,1),
idpersona int,
likes int,
comments nvarchar(100),
locationImg nvarchar(100),
postComment nvarchar(100))
go

create table amigo(
idpersona int,
idamigo int)
go

insert into persona
values
('pablo Arellano','4491234567','hombre','07/01/1997','pablo@gmail.com','hola')
go


create procedure getidpersona
(@correo nvarchar(100))
as
select idpersona from persona where correo = @correo
go


create procedure registro
(
	@correo nvarchar(100),
	@contras nvarchar(50),
	@haserror bit out
)
as
begin try
	set @haserror = 0;
	if exists(select top 1 1 from persona where correo = @correo)
	begin
		set @haserror = 1
	end
	else
	begin
		insert into persona
		values
		(@correo,@contras)
	end
end try
begin catch
	set @haserror = 1;
end catch
go

create procedure logi
(
	@correo nvarchar(100),
	@contras nvarchar(50),
	@haserror bit out
)
as
begin try
	set @haserror = 0;
	if exists(select top 1 1 from persona where correo = @correo and contras = @contras)
	begin
		set @haserror = 0;
	end
	else
	begin
		set @haserror = 1;
	end
end try
begin catch
	set @haserror = 1;
end catch
go
