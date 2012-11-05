-- Borrado de la base


DELETE FROM dbo.Usuario
DBCC CHECKIDENT('dbo.Usuario', RESEED, 0)
DELETE FROM dbo.TipoUsuario
DBCC CHECKIDENT('dbo.TipoUsuario', RESEED, 0)
DELETE FROM dbo.Persona
DBCC CHECKIDENT('dbo.Persona',RESEED, 0)
DELETE FROM dbo.Pais
DBCC CHECKIDENT('dbo.Pais',RESEED,0)
DELETE FROM dbo.EstadoUsuario
DBCC CHECKIDENT('dbo.EstadoUsuario',RESEED,0)
DELETE FROM dbo.Genero
DBCC CHECKIDENT ('dbo.Genero',RESEED,0)


