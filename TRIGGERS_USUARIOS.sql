
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

-- INSERTAR - ELIMINAR - ACTUALIZAR
CREATE LOGIN vendedor WITH PASSWORD = '1234', DEFAULT_DATABASE = terminal
GO
USE terminal
GO
CREATE USER vendedor FOR LOGIN vendedor
GO
GRANT SELECT ON OBJECT::destino TO vendedor
GO
GRANT SELECT ON OBJECT::empresa TO vendedor
GO
GRANT SELECT ON OBJECT::asientos TO vendedor
GO
GRANT SELECT ON OBJECT::opciones_pago TO vendedor
GO
GRANT SELECT ON OBJECT::pasaje TO vendedor
GO
GRANT SELECT ON OBJECT::cliente TO vendedor
GO
GRANT INSERT ON OBJECT::pasaje TO vendedor
GO
GRANT INSERT ON OBJECT::cliente TO vendedor
GO
GRANT UPDATE ON OBJECT::cliente TO vendedor
GO
DENY SELECT ON OBJECT::tipo_empleado TO vendedor
GO
DENY SELECT ON OBJECT::tipo_terminal TO vendedor
GO
DENY SELECT ON OBJECT::empleado TO vendedor
GO
DENY SELECT ON OBJECT::localidad TO vendedor
GO
DENY SELECT ON OBJECT::provincia TO vendedor
GO
DENY SELECT ON OBJECT::pais TO vendedor
GO
DENY SELECT ON OBJECT::registro_cliente TO vendedor
GO
DENY UPDATE ON OBJECT::tipo_empleado TO vendedor
GO
DENY UPDATE ON OBJECT::tipo_terminal TO vendedor
GO
DENY UPDATE ON OBJECT::empleado TO vendedor
GO
DENY UPDATE ON OBJECT::localidad TO vendedor
GO
DENY UPDATE ON OBJECT::provincia TO vendedor
GO
DENY UPDATE ON OBJECT::pais TO vendedor
GO
DENY UPDATE ON OBJECT::registro_cliente TO vendedor
GO
DENY DELETE ON OBJECT::tipo_empleado TO vendedor
GO
DENY DELETE ON OBJECT::tipo_terminal TO vendedor
GO
DENY DELETE ON OBJECT::empleado TO vendedor
GO
DENY DELETE ON OBJECT::localidad TO vendedor
GO
DENY DELETE ON OBJECT::provincia TO vendedor
GO
DENY DELETE ON OBJECT::pais TO vendedor
GO
DENY DELETE ON OBJECT::registro_cliente TO vendedor

-- SOLO LECTURA
CREATE LOGIN controlDatos WITH PASSWORD = '1234';
USE terminal;
CREATE USER controlDatos FOR LOGIN controlDatos;
ALTER ROLE db_datareader ADD MEMBER controlDatos;
GO

-- INSERTAR - ELIMINAR - ACTUALIZAR
CREATE LOGIN vendedor2 WITH PASSWORD = '1234';
CREATE USER vendedor2 FOR LOGIN vendedor2;
ALTER ROLE db_datawriter ADD MEMBER vendedor2;
GO

-- ADMINISTRADOR 
CREATE LOGIN admi WITH PASSWORD = '1234';
CREATE USER admi FOR LOGIN admi;
ALTER ROLE db_ddladmin ADD MEMBER admi;
