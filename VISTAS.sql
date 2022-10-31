USE terminal;
GO

-- VISTAS -------------------------------------------------------------------------
CREATE VIEW VW_ListaPasajes WITH ENCRYPTION
AS
	
	SELECT 
		cod_pasaje'Nº',
		terminal.nombre'TERMINAL',
		opciones_pago.tipo_pago'TIPO DE PAGO',
		(localidad.localidad + ' - ' + ' - ' + provincia.provincia + ' - ' + pais.pais) 'DESTINO',
		empresa.nombre'EMPRESA',
		colectivo.numero_colectivo'Nº COLECTIVO',
		cliente.dni'DNI',
		(cliente.nombre + ' ' + cliente.apellido)'CLIENTE',
		(empleado.nombre + ' ' + empleado.apellido)'VENDEDOR',
		fecha_emicion'FECHA COMPRA',
		fecha_salida'SALIDA',
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

GO 

---------------------------------------------------------------
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

GO

