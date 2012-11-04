--opcionales telefono, fecha nacimiento, descripcion 

CREATE PROCEDURE [dbo].[spcrearUsuario]
 @pnombre nvarchar(20),
 @papellido nvarchar(25),
 @pfechaNacimiento date,
 @pemail nvarchar(40),
 @ptelefono nvarchar(40),
 @pgenero nvarchar(15),
 @ppais nvarchar(30),
 @plogin nvarchar(25),
 @ppassword nvarchar(50),
 @pfechaInscripcion datetime,
 @descripcion nvarchar(200),
 @ptipousuario nvarchar(20)
  	
AS BEGIN
declare @passwEncriptado varbinary(50) = HASHBYTES('MD5', @ppassword);
declare @pidPersona int;
	insert into Persona(nombre,apellido,fechaNacimiento,email,telefono,fk_idGenero,fk_idPais)
		   values(@pnombre,@papellido,isnull(@pfechaNacimiento,null),@pemail,isnull(@ptelefono,null),
				(select idGenero from Genero where genero = @pgenero),
				(select idPais from Pais where pais = @ppais));
				
	set @pidPersona = @@Identity;
	
	insert into Usuario(login, password,fechaInscripcion, descripcion, fk_idPersona, fk_idestadoUsuario, fk_idtipoUsuario)
				values (@plogin,@passwEncriptado, @pfechaInscripcion, isnull(@descripcion,null),
						@pidPersona, (select idEstadoUsuario from EstadoUsuario where estadoUsuario = 'Activo'),
						(select idTipoUsuario from TipoUsuario where tipoUsuario = @ptipousuario));
						
				
END
