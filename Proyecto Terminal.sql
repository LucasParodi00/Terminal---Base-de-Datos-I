

--if object_id('') is not null DROP TABLE ;
--DROP DATABASE terminal;

CREATE DATABASE terminal;
GO
USE terminal;
GO

CREATE TABLE cliente (
dni INT UNIQUE,
nombre VARCHAR (30) NOT NULL,
apellido VARCHAR (30) NOT NULL,
celular VARCHAR (12) NOT NULL,
correo VARCHAR (50) NOT NULL,
fechaNacimiento DATE  NOT NULL, 
PRIMARY KEY (dni)
);

GO

CREATE TABLE pais (
cod_pais INT IDENTITY (1,1),
pais VARCHAR(30) NOT NULL

PRIMARY KEY (cod_pais)
);

GO

CREATE TABLE provincia(
cod_pais INT NOT NULL,
cod_provincia INT IDENTITY (1,1),
provincia VARCHAR (50) NOT NULL

PRIMARY KEY (cod_provincia, cod_pais),
CONSTRAINT FK_provincia_pais FOREIGN KEY (cod_pais) REFERENCES pais(cod_pais)
);

GO

CREATE TABLE localidad (
cod_pais INT NOT NULL,
cod_provincia INT NOT NULL,
cod_localidad INT IDENTITY (1,1),
localidad VARCHAR(50) NOT NULL

PRIMARY KEY (cod_pais, cod_provincia, cod_localidad),
CONSTRAINT FK_localidad_provincia FOREIGN KEY (cod_provincia, cod_pais) REFERENCES provincia (cod_provincia, cod_pais)
);

GO

--CREATE TABLE direccion (
--cod_direccion INT IDENTITY (1, 1),
--cod_pais INT NOT NULL,
--cod_provincia INT NOT NULL,
--cod_localidad INT NOT NULL,
--calle VARCHAR(30) NOT NULL,
--altura INT NOT NULL,
--dpto VARCHAR (30),
--piso VARCHAR (3),

--PRIMARY KEY (cod_direccion),
--CONSTRAINT FK_localidad FOREIGN KEY (cod_pais, cod_provincia, cod_localidad) REFERENCES localidad ( cod_pais, cod_provincia,cod_localidad)
--);

GO

CREATE TABLE empresa (
cod_empresa INT IDENTITY (1,1),
nombre VARCHAR (30) NOT NULL,
correo VARCHAR (50) NOT NULL,
cnrt VARCHAR (11) NOT NULL,
telefono VARCHAR (11) NOT NULL,
direccion VARCHAR (100) NOT NULL

PRIMARY KEY (cod_empresa)
);

GO

CREATE TABLE chofer (
dni	INT UNIQUE,
cod_empresa INT NOT NULL,
nombre VARCHAR (30) NOT NULL,
apellido VARCHAR (30) NOT NULL,
celular VARCHAR (11) NOT NULL,
correo VARCHAR (50) NOT NULL,
fecha_nacimiento DATE NOT NULL,
licencia VARCHAR (5) NOT NULL,
direccion VARCHAR (100) NOT NULL,

PRIMARY KEY (dni),
CONSTRAINT FK_chofer_empresa FOREIGN KEY (cod_empresa) REFERENCES empresa (cod_empresa)
);

GO

CREATE TABLE colectivo (
cod_empresa	INT NOT NULL,
numero_colectivo INT NOT NULL,
numero_patente VARCHAR (9) NOT NULL,
numero_asiento INT NOT NULL,
descripcion VARCHAR (70)

PRIMARY KEY (cod_empresa, numero_colectivo),
CONSTRAINT FK_colectivo_empresa FOREIGN KEY (cod_empresa) REFERENCES empresa(cod_empresa)
);

GO

CREATE TABLE tipo_terminal (
cod_tipo INT IDENTITY (1,1),
tipo VARCHAR (40) NOT NULL,

PRIMARY KEY (cod_tipo)
);

GO

CREATE TABLE terminal (
cod_terminal INT IDENTITY (1,1),
cod_tipo_terminal INT NOT NULL,
nombre VARCHAR (50) NOT NULL,
cantidad_estaciones INT NOT NULL,
telefono VARCHAR (12) NOT NULL,
correo VARCHAR (50) NOT NULL,
direccion VARCHAR (100) NOT NULL

PRIMARY KEY (cod_terminal),
CONSTRAINT FK_terminal_tipo_terminal FOREIGN KEY (cod_tipo_terminal) REFERENCES tipo_terminal (cod_tipo)
);

GO

CREATE TABLE tipo_empleado(
cod_tipo_empleado INT IDENTITY (1,1),
tipo_empleado VARCHAR (30) NOT NULL

PRIMARY KEY (cod_tipo_empleado)
);

GO

CREATE TABLE empleado (
dni INT UNIQUE NOT NULL,
nombre VARCHAR (30) NOT NULL,
apellido VARCHAR (30) NOT NULL,
telefono VARCHAR (11) NOT NULL,
correo VARCHAR (50) NOT NULL,
fecha_nacimiento DATE NOT NULL,
cod_tipo_empleado INT NOT NULL,
direccion VARCHAR (100) NOT NULL

PRIMARY KEY (dni)
CONSTRAINT FK_empleado_tipo_empleado FOREIGN KEY (cod_tipo_empleado) REFERENCES tipo_empleado (cod_tipo_empleado)
);

GO

CREATE TABLE opciones_pago(
cod_pago INT IDENTITY (1,1),
tipo_pago VARCHAR (30) NOT NULL

PRIMARY KEY (cod_pago)
);

GO

CREATE TABLE destino (
cod_destino INT IDENTITY (1,1),
cod_pais INT NOT NULL,
cod_provincia INT NOT NULL,
cod_localidad INT NOT NULL,
precio NUMERIC (9,2) NOT NULL,
detalle VARCHAR (50)

PRIMARY KEY (cod_destino)

);
ALTER TABLE destino ADD CONSTRAINT FK_destino_localidad FOREIGN KEY(cod_pais, cod_provincia, cod_localidad) REFERENCES localidad (cod_pais, cod_provincia, cod_localidad)

GO

CREATE TABLE pasaje (
	cod_pasaje INT IDENTITY (1,1) NOT NULL,
	cod_terminal INT NOT NULL,
	cod_pago INT NOT NULL,
	cod_destino INT NOT NULL,
	cod_empresa INT NOT NULL,
	numero_colectivo INT NOT NULL,
	dni_cliente INT NOT NULL,
	dni_vendedor INT NOT NULL,
	fecha_emicion DATETIME NOT NULL,
	fecha_salida DATE NOT NULL,
	num_asiento INT NOT NULL,
PRIMARY KEY (cod_pasaje),
CONSTRAINT FK_pasaje_terminal FOREIGN KEY (cod_terminal) REFERENCES terminal (cod_terminal),
CONSTRAINT FK_pasaje_tipo_pago FOREIGN KEY (cod_pago) REFERENCES opciones_pago (cod_pago),
CONSTRAINT FK_pasaje_destino FOREIGN KEY (cod_destino) REFERENCES destino (cod_destino),
CONSTRAINT FK_pasaje_empresa FOREIGN KEY (cod_empresa, numero_colectivo) REFERENCES colectivo (cod_empresa, numero_colectivo),
CONSTRAINT FK_pasaje_cliente FOREIGN KEY (dni_cliente) REFERENCES cliente (dni),
CONSTRAINT FK_pasaje_empleado FOREIGN KEY (dni_vendedor) REFERENCES empleado (dni)
);


GO

-- PROCEDIMIENTOS ALMACENADOS----------------------------------------------------------------------------
CREATE PROC PA_VerPasaje
	@cod_pasaje INT
AS
	SELECT 
		cod_pasaje'Nº',
		terminal.nombre'TERMINAL',
		opciones_pago.tipo_pago'TIPO DE PAGO',
		pais.pais 'PAIS',
		provincia.provincia'PROVINCIA',
		localidad.localidad'LOCALIDAD',
		empresa.nombre'EMPRESA',
		colectivo.numero_colectivo'Nº COLECTIVO',
		cliente.dni'DNI',
		cliente.nombre'NOMBRE',
		cliente.apellido'APELLIDO',
		empleado.nombre'VENDEDOR',
		empleado.apellido'VENDEDOR',
		fecha_emicion'FECHA COMPRA',
		fecha_salida'SALIDA',
		num_asiento'Nº ASIENTO',
		precio'PRECIO'
	FROM pasaje
JOIN terminal ON terminal.cod_terminal = pasaje.cod_terminal
JOIN opciones_pago ON opciones_pago.cod_pago = pasaje.cod_pago
JOIN empresa ON empresa.cod_empresa = pasaje.cod_empresa
JOIN colectivo ON colectivo.numero_colectivo = pasaje.numero_colectivo AND colectivo.cod_empresa = pasaje.cod_empresa
JOIN cliente ON cliente.dni = pasaje.dni_cliente
JOIN empleado ON empleado.dni = pasaje.dni_vendedor
JOIN destino ON destino.cod_destino = pasaje.cod_destino 
JOIN localidad ON localidad.cod_localidad = destino.cod_localidad AND localidad.cod_provincia = destino.cod_provincia AND localidad.cod_pais = destino.cod_pais
JOIN provincia ON provincia.cod_provincia = destino.cod_provincia AND provincia.cod_pais = destino.cod_pais
JOIN pais ON pais.cod_pais = destino.cod_pais
	WHERE @cod_pasaje = cod_pasaje;

GO
--EMPLEADOS
CREATE PROCEDURE PA_CargarEmpleado 
	@dni INT,
	@nombre VARCHAR(30) ,
	@apellido VARCHAR (30),
	@telefono VARCHAR (11),
	@correo VARCHAR(50),
	@fecha_nacimiento DATE,
	@cod_tipo_empleado INT,
	@direccion VARCHAR (40)
AS
	INSERT INTO empleado
	VALUES (@dni, 
		    @nombre, 
			@apellido, 
			@telefono, 
			@correo, 
			@fecha_nacimiento, 
			@cod_tipo_empleado,
			@direccion)

	SELECT @dni = dni, 
	       @nombre = nombre, 
		   @apellido = apellido, 
		   @telefono = telefono, 
		   @correo = correo, 
		   @cod_tipo_empleado = cod_tipo_empleado,
		   @direccion = direccion
	FROM empleado
	SELECT * FROM empleado;

GO

CREATE PROC PA_ActualizarEmpleado 
	@dni INT,
	@nombre VARCHAR(30) ,
	@apellido VARCHAR (30),
	@telefono VARCHAR (11),
	@correo VARCHAR(50),
	@fecha_nacimiento DATE,
	@cod_tipo_empleado INT,
	@direccion VARCHAR (100)
AS
	UPDATE empleado
	SET @nombre = nombre, 
		@apellido = apellido, 
		@telefono = telefono, 
		@correo = correo, 
		@fecha_nacimiento = fecha_nacimiento,
		@cod_tipo_empleado = cod_tipo_empleado,
		@direccion = direccion
	FROM empleado
	WHERE dni = @dni;
GO

CREATE PROC PA_Leer_Datos_Empleados
		   @dni INT
AS 
	SELECT dni'DNI',
		   nombre'NOMBRE', 
		   apellido'APELLIDO',
		   telefono'TELEFONO', 
		   correo'CORREO', 
		   DATEDIFF (YEAR, fecha_nacimiento, GETDATE())'EDAD',
		   direccion,
		   tipo_empleado.tipo_empleado'EMPLEADO'
	FROM empleado	   
JOIN tipo_empleado ON empleado.cod_tipo_empleado = tipo_empleado.cod_tipo_empleado
	WHERE (dni = @dni);
GO

--CLIENTES
CREATE PROC PA_CargarCliente 
	@dni INT,
	@nombre VARCHAR (30),
	@apellido VARCHAR (30),
	@numero_telefono VARCHAR (11),
	@correo VARCHAR (50),
	@fecha_nacimiento DATE
AS
	INSERT INTO cliente
	VALUES (@dni, 
			@nombre, 
			@apellido, 
			@numero_telefono, 
			@correo, 
			@fecha_nacimiento)
	SELECT @dni = dni, 
		   @nombre = nombre, 
		   @apellido = apellido, 
		   @numero_telefono = celular, 
		   @correo = correo, 
		   @fecha_nacimiento = fechaNacimiento
	FROM cliente;
	SELECT * FROM cliente;
GO

CREATE PROC PA_ActualizarCliente 
	@dni INT,
	@nombre VARCHAR (30),
	@apellido VARCHAR (30),
	@numero_telefono VARCHAR (11),
	@correo VARCHAR (50),
	@fecha_nacimiento DATE
AS
	UPDATE cliente
	SET    @dni = dni, 
		   @nombre = nombre, 
		   @apellido = apellido, 
		   @numero_telefono = celular, 
		   @correo = correo, 
		   @fecha_nacimiento = fechaNacimiento
	FROM cliente;
	SELECT * FROM cliente;
GO

CREATE PROC PA_Leer_Datos_Clientes
		@dni INT
AS 
	SELECT dni'DNI',
		   nombre'NOMBRE', 
		   apellido'APELLIDO',
		   celular'TELEFONO', 
		   correo'CORREO', 
		   DATEDIFF (YEAR, fechaNacimiento, GETDATE())'EDAD'
	FROM cliente	   
	WHERE (dni = @dni);

GO

-- COLECTIVO
CREATE PROC PA_CargarColectivo
	@cod_empresa INT,
	@numero_colectivo INT,
	@numero_patente VARCHAR (9),
	@numero_asiento INT,
	@descripcion VARCHAR (70)
AS
	INSERT INTO colectivo
	VALUES (@cod_empresa, 
		    @numero_colectivo, 
			@numero_patente, 
			@numero_asiento, 
			@descripcion)

	SELECT @cod_empresa = cod_empresa,
		   @numero_colectivo = numero_colectivo,
		   @numero_patente = numero_patente,
		   @numero_asiento = numero_asiento,
		   @descripcion  = descripcion
	FROM colectivo
	SELECT * FROM colectivo;
GO

CREATE PROC PA_VerColectivo
		@numero_colectivo INT,
		@numero_empresa INT
AS
	SELECT empresa.nombre'EMPRESA',
		   numero_colectivo'Nº COLECTIVO',
		   numero_patente'Nº PATENTE',
		   numero_asiento'Nº ASIENTO',
		   descripcion 'DESCRIPCION'
	FROM colectivo
JOIN empresa ON empresa.cod_empresa = colectivo.cod_empresa
	WHERE @numero_colectivo = numero_colectivo AND @numero_empresa = empresa.cod_empresa
GO

CREATE PROC PA_ModificarColectivo
	@cod_empresa INT,
	@numero_colectivo INT,
	@numero_patente VARCHAR (9),
	@numero_asiento INT,
	@descripcion VARCHAR (70)
AS
	UPDATE colectivo
	SET    @cod_empresa = cod_empresa,
		   @numero_colectivo = numero_colectivo,
		   @numero_patente = numero_patente,
		   @numero_asiento = numero_asiento,
		   @descripcion  = descripcion
	FROM colectivo
	SELECT * FROM colectivo;
GO

-- EMPRESA

CREATE PROC PA_CargarEmpresa
	@nombre VARCHAR(30),
	@correo VARCHAR (50),
	@crnt VARCHAR (11),
	@telefono VARCHAR(11),
	@direccion VARCHAR (100)
AS
	INSERT INTO empresa
	VALUES(@nombre, 
		   @correo, 
		   @crnt, 
		   @telefono,
		   @direccion)

	SELECT @nombre = nombre,
		   @correo = correo,
		   @crnt = cnrt,
		   @telefono = telefono,
		   @direccion = direccion
	FROM empresa;
	SELECT * FROM empresa;
GO

CREATE PROC PA_ModificarEmpresa
	@cod_empresa INT,
	@nombre VARCHAR(30),
	@correo VARCHAR (50),
	@crnt VARCHAR (11),
	@telefono VARCHAR(11),
	@direccion VARCHAR (100)
AS
	UPDATE empresa
	SET    @nombre = nombre,
		   @correo = correo,
		   @crnt = cnrt,
		   @telefono = telefono,
		   @direccion = direccion
	FROM empresa
	WHERE (cod_empresa = cod_empresa)
	SELECT * FROM empresa;
GO

CREATE PROC PA_VerEmpresas
		@cod_empresa INT
AS
	SELECT 
		cod_empresa,
		nombre'NOMBRE',
		direccion'DIRECCION',
		correo'CORREO',
		cnrt 'CRNT',
		telefono 'TELEFONO'
	FROM empresa
	WHERE @cod_empresa = cod_empresa;
GO

--CHOFER

CREATE PROC PA_AgregarChofer
		@dni INT,
		@cod_empresa INT,
		@nombre VARCHAR(30),
		@apellido VARCHAR(30),
		@celular VARCHAR(30),
		@correo VARCHAR(50),
		@fecha_nacimiento DATE,
		@licencia VARCHAR(4),
		@direccion VARCHAR (100)
AS
	INSERT INTO chofer
	VALUES (@dni,
	        @cod_empresa,
			@nombre,
			@apellido,
			@celular,
			@correo,
			@fecha_nacimiento,
			@licencia,
			@direccion)
	
	SELECT @dni = dni,
		   @cod_empresa = cod_empresa,
		   @nombre = nombre,
		   @apellido = apellido,
		   @celular = celular,
		   @correo = correo,
		   @fecha_nacimiento = fecha_nacimiento,
		   @licencia = licencia,
		   @direccion = direccion
	FROM chofer;
	SELECT * FROM chofer;
GO

CREATE PROC PA_ModificarChofer
		@dni INT,
		@cod_empresa INT,
		@nombre VARCHAR(30),
		@apellido VARCHAR(30),
		@celular VARCHAR(30),
		@correo VARCHAR(50),
		@fecha_nacimiento DATE,
		@licencia VARCHAR(4),
		@direccion VARCHAR (100)
AS
	UPDATE chofer
	SET    @dni = dni,
		   @cod_empresa = cod_empresa,
		   @nombre = nombre,
		   @apellido = apellido,
		   @celular = celular,
		   @correo = correo,
		   @fecha_nacimiento = fecha_nacimiento,
		   @licencia = licencia,
		   @direccion = direccion
	FROM chofer;
	SELECT * FROM chofer;
GO

CREATE PROC PA_VerChoferes
		@dni INT
AS
	SELECT dni'DNI',
		   empresa.nombre'EMPRESA',
		   chofer.nombre'NOMBRE',
		   apellido'APELLIDO',
		   celular'CELULAR',
		   chofer.correo'CORREO',
		   DATEDIFF (YEAR, fecha_nacimiento, GETDATE())'EDAD',
		   licencia'TIPO LICENCIA',
		   chofer.direccion'DIRECCION'
	FROM chofer
JOIN empresa ON empresa.cod_empresa = chofer.cod_empresa
	WHERE @dni = dni;
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
CREATE TRIGGER TR_RegistroInsercionUsuario_BI 
	 ON cliente FOR INSERT 
 AS
 SET NOCOUNT ON
 DECLARE @dni_cliente INT
 SELECT @dni_cliente = dni FROM inserted
	INSERT INTO registro_cliente
	(dni_cliente, dato ,usuario, fecha)
VALUES 
(@dni_cliente, 'SE AGREGO CLIENTE', SYSTEM_USER, GETDATE())



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


GO

-- VISTAS -------------------------------------------------------------------------
CREATE VIEW VW_ListaPasajes WITH ENCRYPTION
AS
	
	SELECT 
		cod_pasaje'Nº',
		terminal.nombre'TERMINAL',
		opciones_pago.tipo_pago'TIPO DE PAGO',
		pais.pais 'PAIS',
		provincia.provincia'PROVINCIA',
		localidad.localidad'LOCALIDAD',
		empresa.nombre'EMPRESA',
		colectivo.numero_colectivo'Nº COLECTIVO',
		cliente.dni'DNI',
		(cliente.nombre + ' ' + cliente.apellido)'CLIENTE',
		(empleado.nombre + ' ' + empleado.apellido)'VENDEDOR',
		fecha_emicion'FECHA COMPRA',
		fecha_salida'SALIDA',
		num_asiento'Nº ASIENTO',
		precio'PRECIO'
	FROM pasaje
JOIN terminal ON terminal.cod_terminal = pasaje.cod_terminal
JOIN opciones_pago ON opciones_pago.cod_pago = pasaje.cod_pago
JOIN empresa ON empresa.cod_empresa = pasaje.cod_empresa
JOIN colectivo ON colectivo.numero_colectivo = pasaje.numero_colectivo AND colectivo.cod_empresa = pasaje.cod_empresa
JOIN cliente ON cliente.dni = pasaje.dni_cliente
JOIN empleado ON empleado.dni = pasaje.dni_vendedor
JOIN destino ON destino.cod_destino = pasaje.cod_destino 
JOIN localidad ON localidad.cod_localidad = destino.cod_localidad AND localidad.cod_provincia = destino.cod_provincia AND localidad.cod_pais = destino.cod_pais
JOIN provincia ON provincia.cod_provincia = destino.cod_provincia AND provincia.cod_pais = destino.cod_pais
JOIN pais ON pais.cod_pais = destino.cod_pais


CREATE VIEW VW_DestinoCliente WITH ENCRYPTION
AS
	SELECT cod_pasaje,
		   (cliente.nombre + ' ' + cliente.apellido) 'CLIENTE',
		   cliente.dni'DNI',
		   (localidad.localidad + ' - ' + provincia.provincia + ' - ' + pais.pais) 'DESTINO'
	FROM pasaje
JOIN cliente ON cliente.dni = pasaje.dni_cliente
JOIN destino ON destino.cod_destino = pasaje.cod_destino 
JOIN localidad ON localidad.cod_localidad = destino.cod_localidad AND localidad.cod_provincia = destino.cod_provincia AND localidad.cod_pais = destino.cod_pais
JOIN provincia ON provincia.cod_provincia = destino.cod_provincia AND provincia.cod_pais = destino.cod_pais
JOIN pais ON pais.cod_pais = destino.cod_pais

SELECT * FROM VW_DestinoCliente
DROP VIEW VW_DestinoCliente