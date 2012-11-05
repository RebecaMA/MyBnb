

ALTER PROCEDURE [dbo].[spautentificarUsuario]

	@pusuario nvarchar(30),
	@ppassw nvarchar(50)
	
AS BEGIN
	
	declare @passwordMD5 varbinary(50);
	declare @resultado nvarchar(20);
	declare @idUsuario int = (select idUsuario from dbo.Usuario where login = @pusuario);
	declare @b int = 0;	
	declare @p varbinary(50) = (select password from Usuario where idUsuario = @idUsuario)
	set @passwordMD5 = HASHBYTES('MD5', @ppassw);
	
    set @resultado = isnull(
					(select TipoUsuario from dbo.Usuario inner join dbo.TipoUsuario on FK_idTipoUsuario = idTipoUsuario 
						where idUsuario = @idUsuario and password = @passwordMD5)
					, 'Error');
	
					
	
	select @resultado Resultado
					


END

exec spautentificarUsuario 'Ree','mimi91';

--select * from Usuario
--exec spcrearUsuario 'Rebeca','Moreno','1991/07/06','rbma91@gmail.com',null,'Femenino','Costa Rica','Ree','mimi91','2012/11/05',null,'Viajero'


