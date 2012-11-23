-- Borrado de la base


DELETE FROM dbo.ReservacionesXViaje

DELETE FROM dbo.Viaje
DBCC CHECKIDENT('dbo.Viaje',RESEED,0)
DELETE FROM dbo.Reservacion
DBCC CHECKIDENT('dbo.Reservacion',RESEED,0)

DELETE FROM dbo.Propiedad
DBCC CHECKIDENT('dbo.Propiedad',RESEED,0)
DELETE FROM Localidad
DBCC CHECKIDENT ('dbo.Localidad', RESEED,0)

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
DELETE FROM dbo.CategoriaHospedaje
DBCC CHECKIDENT ('dbo.CategoriaHospedaje',RESEED,0)
DELETE FROM dbo.TipoHospedaje
DBCC  CHECKIDENT ('dbo.TipoHospedaje',RESEED,0)
DELETE FROM dbo.Prioridad
DBCC  CHECKIDENT ('dbo.Prioridad',RESEED,0)
DELETE FROM dbo.WishlistXUsuario
DELETE FROM dbo.Recomendacion
DBCC  CHECKIDENT ('dbo.Recomendacion',RESEED,0)