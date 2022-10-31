
USE terminal;
GO
-- DISPARADORES -------------------------------------------------------------------------------------------------
-- TRIGGER para saber que usuario inserto un nuevo cliente, muestra el dni del cliente, la fecha de insercion y 
-- el usuario que lo registro.
CREATE TABLE registro_cliente (
	dni_cliente INT,
	dato VARCHAR(70),
	usuario VARCHAR (30),
	fecha DATETIME,
);

GO

CREATE TRIGGER TR_RegistroInsercionUsuario_BI 
	 ON cliente FOR INSERT 
 AS
 SET NOCOUNT ON
 DECLARE @dni_cliente INT
 SELECT @dni_cliente = dni FROM inserted
	INSERT INTO registro_cliente
	(dni_cliente, dato ,usuario, fecha)
VALUES 
(@dni_cliente, 'SE AGREGO CLIENTE', SYSTEM_USER, GETDATE());

-- ROLES --------------------------------------------------------------------------------------------------------

-- SOLO LECTURA
CREATE LOGIN usuario1 WITH PASSWORD = '1234';
USE terminal;
CREATE USER usuario1 FOR LOGIN usuario1;
ALTER ROLE db_datareader ADD MEMBER usuario1;
GO

-- INSERTAR - ELIMINAR - ACTUALIZAR
CREATE LOGIN usuario2 WITH PASSWORD = '1234';
CREATE USER usuario2 FOR LOGIN usuario2;
ALTER ROLE db_datawriter ADD MEMBER usuario2;
GO
-- INSERTAR - ELIMINAR - ACTUALIZAR
CREATE LOGIN usuario3 WITH PASSWORD = '1234';
CREATE USER usuario3 FOR LOGIN usuario3;
ALTER ROLE db_datawriter ADD MEMBER usuario3;
GO

-- ADMINISTRADOR 
CREATE LOGIN admi WITH PASSWORD = '1234';
CREATE USER admi FOR LOGIN admi;
ALTER ROLE db_ddladmin ADD MEMBER admi;
