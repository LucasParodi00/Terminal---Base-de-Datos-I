

USE terminal;
GO
 --PROCEDIMIENTOS ALMACENADOS----------------------------------------------------------------------------
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
		pasaje.fecha_salida'SALIDA',
		asientos.num_asientos'Nº ASIENTO',
		destino.precio'PRECIO'
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
JOIN asientos ON asientos.fecha_salida = pasaje.fecha_salida AND asientos.num_colectivo = colectivo.numero_colectivo AND asientos.empresa = empresa.cod_empresa
	WHERE @cod_pasaje = cod_pasaje;


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

-- DESTINO - ASIENTO
CREATE PROC PA_Fecha_Asientos (
		@cod_destino INT,
		@fecha_salida DATE,
		@num_colectivo INT, 
		@empresa INT
)
AS	
	
	 DECLARE @asientos INT 
	 SELECT @asientos = numero_asiento FROM colectivo WHERE cod_empresa = @empresa AND numero_colectivo = @num_colectivo
	 INSERT INTO asientos (cod_destino, fecha_salida, num_colectivo, empresa, num_asientos)
	 VALUES (@cod_destino, @fecha_salida, @num_colectivo, @empresa, @asientos)

GO

-- TRANSACCIONES----------------------------------------------------------------------
-- No genera el pasaje si no hay asientos disponibles.
CREATE PROC comprarPasaje (
	@cod_terminal INT,
	@cod_pago INT,
	@cod_destino INT,
	@cod_empresa INT,
	@numero_colectivo INT,
	@dni_cliente INT,
	@dni_vendedor INT,
	@fecha_salida DATE
	)
AS
	BEGIN
		BEGIN TRY
			BEGIN TRANSACTION 
			declare @error date

			DECLARE @fecha_emicion DATETIME
			SELECT @fecha_emicion = GETDATE()

			IF  @fecha_salida in (select fecha_salida from asientos)
				BEGIN 
				select @error = @fecha_salida
				UPDATE asientos SET num_asientos = num_asientos - 1 WHERE @cod_empresa = empresa AND @numero_colectivo = num_colectivo AND @error = fecha_salida;
				END

			INSERT INTO pasaje (cod_terminal, cod_pago, cod_destino, cod_empresa, numero_colectivo, dni_cliente, dni_vendedor, fecha_emicion, fecha_salida) 
			VALUES (@cod_terminal, @cod_pago, @cod_destino, @cod_empresa, @numero_colectivo, @dni_cliente, @dni_vendedor, @fecha_emicion, @error)
			
			COMMIT TRANSACTION
		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION
			PRINT 'No hay asientos disponibles para esa fecha';
			THROW;
		END CATCH
	END
GO
