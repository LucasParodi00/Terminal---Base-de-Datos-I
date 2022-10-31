

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
);
ALTER TABLE provincia ADD CONSTRAINT FK_provincia_pais FOREIGN KEY (cod_pais) REFERENCES pais(cod_pais);

GO

CREATE TABLE localidad (
cod_pais INT NOT NULL,
cod_provincia INT NOT NULL,
cod_localidad INT IDENTITY (1,1),
localidad VARCHAR(50) NOT NULL

PRIMARY KEY (cod_pais, cod_provincia, cod_localidad),
);
ALTER TABLE localidad ADD CONSTRAINT FK_localidad_provincia FOREIGN KEY (cod_provincia, cod_pais) REFERENCES provincia (cod_provincia, cod_pais);

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
);
ALTER TABLE chofer ADD CONSTRAINT FK_chofer_empresa FOREIGN KEY (cod_empresa) REFERENCES empresa (cod_empresa);

GO

CREATE TABLE colectivo (
cod_empresa	INT NOT NULL,
numero_colectivo INT NOT NULL,
numero_patente VARCHAR (9) NOT NULL,
numero_asiento INT NOT NULL,
descripcion VARCHAR (70)

PRIMARY KEY (cod_empresa, numero_colectivo),
);
ALTER TABLE colectivo ADD CONSTRAINT FK_colectivo_empresa FOREIGN KEY (cod_empresa) REFERENCES empresa(cod_empresa);

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
);
ALTER TABLE terminal ADD CONSTRAINT FK_terminal_tipo_terminal FOREIGN KEY (cod_tipo_terminal) REFERENCES tipo_terminal (cod_tipo);

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
);
ALTER TABLE empleado ADD CONSTRAINT FK_empleado_tipo_empleado FOREIGN KEY (cod_tipo_empleado) REFERENCES tipo_empleado (cod_tipo_empleado);

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
ALTER TABLE destino ADD CONSTRAINT FK_destino_localidad FOREIGN KEY(cod_pais, cod_provincia, cod_localidad) REFERENCES localidad (cod_pais, cod_provincia, cod_localidad);

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
	--num_asiento INT NOT NULL,
PRIMARY KEY (cod_pasaje)
);
ALTER TABLE pasaje ADD CONSTRAINT FK_pasaje_terminal FOREIGN KEY (cod_terminal) REFERENCES terminal (cod_terminal);
ALTER TABLE pasaje ADD CONSTRAINT FK_pasaje_tipo_pago FOREIGN KEY (cod_pago) REFERENCES opciones_pago (cod_pago);
ALTER TABLE pasaje ADD CONSTRAINT FK_pasaje_destino FOREIGN KEY (cod_destino) REFERENCES destino (cod_destino);
ALTER TABLE pasaje ADD CONSTRAINT FK_pasaje_empresa FOREIGN KEY (cod_empresa, numero_colectivo) REFERENCES colectivo (cod_empresa, numero_colectivo);
ALTER TABLE pasaje ADD CONSTRAINT FK_pasaje_cliente FOREIGN KEY (dni_cliente) REFERENCES cliente (dni);
ALTER TABLE pasaje ADD CONSTRAINT FK_pasaje_empleado FOREIGN KEY (dni_vendedor) REFERENCES empleado (dni);

GO

CREATE TABLE asientos (
cod_destino INT NOT NULL,
fecha_salida DATE NOT NULL,
num_colectivo INT NOT NULL,
empresa INT NOT NULL,
num_asientos INT NOT NULL

PRIMARY KEY (fecha_salida, num_colectivo, empresa)
);
ALTER TABLE asientos ADD CONSTRAINT FK_Asientos_Colectivo FOREIGN KEY (empresa, num_colectivo) REFERENCES colectivo (cod_empresa, numero_colectivo); 
ALTER TABLE asientos ADD CONSTRAINT CK_CheckAsientos CHECK (num_asientos >= 0)
GO




 


