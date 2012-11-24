
ALTER PROCEDURE [dbo].[spmodificarUsuario]
	@pusuario nvarchar(30), -- nombre de usuario actual
	@plogin nvarchar(25), -- nombre de usuario nuevo
	@ppassword nvarchar(50), -- contraseña nueva
	@descripcion nvarchar(200),
	@pnombre nvarchar(20),
	@papellido nvarchar(25),
	@pfechaNacimiento date,
	@pemail nvarchar(40),
	@ptelefono nvarchar(40),
	@pgenero nvarchar(15),
	@ppais nvarchar(30),
	@pestadoUsuario nvarchar(20)
	
	
AS BEGIN
	
	declare @idPersona int;
	declare @idUsuario int;
	declare @idGenero int;
	declare @idPais int;
	declare @idEstadoUsuario int;
	declare @passwEncriptado varbinary(50);
	
	set @idUsuario = (Select idUsuario from usuario where login = @pusuario);
	set @idEstadoUsuario = (Select idEstadoUsuario from EstadoUsuario where estadoUsuario = @pestadoUsuario);
	set @idPersona = (select fk_idPersona from usuario where idUsuario = @idUsuario);
	set @idGenero = (Select idGenero from Genero where genero = @pgenero);
	set @idPais = (Select idPais from Pais where Pais = @ppais);
	set @passwEncriptado = HASHBYTES('MD5', @ppassword);
	
	
	update dbo.Usuario set login = isnull(@plogin, login) where idUsuario = @idUsuario;
	update dbo.Usuario set password = isnull(@passwEncriptado, password) where idUsuario = @idUsuario;
	update dbo.Usuario set descripcion = isnull(@descripcion, descripcion) where idUsuario = @idUsuario;
	update dbo.Usuario set fk_idEstadoUsuario = isnull(@idEstadoUsuario, fk_idEstadoUsuario) where idUsuario = @idUsuario;
	update dbo.Persona set nombre = isnull(@pnombre, nombre) where idPersona = @idPersona;
	update dbo.Persona set apellido = isnull(@papellido, apellido) where idPersona = @idPersona;
	update dbo.Persona set fechaNacimiento = isnull(@pfechaNacimiento, fechaNacimiento) where idPersona = @idPersona;
	update dbo.Persona set email = isnull(@pemail, email) where idPersona = @idPersona;
	update dbo.Persona set telefono = isnull(@ptelefono,telefono) where idPersona = @idPersona;
	update dbo.Persona set fk_idGenero = isnull(@idGenero,fk_idGenero) where idPersona = @idPersona;
update dbo.Persona set fk_idPais = isnull(@idPais,fk_idPais) where idPersona = @idPersona;				


END

select * from Usuario

--exec spmodificarUsuario 'profe','daniel',null,null,null,null,null,null,null,null,null
