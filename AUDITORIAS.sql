USE [master]
GO
-- Auditoria para mostrar fecha y hora que se realizo un backup
/****** Object:  Audit [Audit-Backup]    Script Date: 12/11/2022 12:13:46 ******/
CREATE SERVER AUDIT [Audit-Backup]
TO FILE 
(	FILEPATH = N'D:\Lucas Parodi\UNNE\Base de Datos I\Practicos\Proyecto\Auditorias\'
	,MAXSIZE = 0 MB
	,MAX_ROLLOVER_FILES = 2147483647
	,RESERVE_DISK_SPACE = OFF
) WITH (QUEUE_DELAY = 1000, ON_FAILURE = CONTINUE, AUDIT_GUID = 'f1b51878-f284-4248-835a-ae2669e2918c')
ALTER SERVER AUDIT [Audit-Backup] WITH (STATE = ON)
GO

CREATE SERVER AUDIT SPECIFICATION [ServerAuditSpecification-Backup]
FOR SERVER AUDIT [Audit-Backup]
ADD (BACKUP_RESTORE_GROUP)
WITH (STATE = ON)
GO


/*****************************************************************************************/
-- Auditoria para controlar el inicio de sesion al servidor
/****** Object:  Audit [Audit-Inicio-Sesion]    Script Date: 12/11/2022 12:23:54 ******/
CREATE SERVER AUDIT [Audit-Inicio-Sesion]
TO FILE 
(	FILEPATH = N'D:\Lucas Parodi\UNNE\Base de Datos I\Practicos\Proyecto\Auditorias\'
	,MAXSIZE = 0 MB
	,MAX_ROLLOVER_FILES = 2147483647
	,RESERVE_DISK_SPACE = OFF
) WITH (QUEUE_DELAY = 1000, ON_FAILURE = CONTINUE, AUDIT_GUID = 'c1609e39-79d1-4c13-93ed-10e6269cfb81')
ALTER SERVER AUDIT [Audit-Inicio-Sesion] WITH (STATE = ON)
GO

CREATE SERVER AUDIT SPECIFICATION [ServerAuditSpecification-Sesion]
FOR SERVER AUDIT [Audit-Inicio-Sesion]
ADD (FAILED_LOGIN_GROUP),
ADD (SUCCESSFUL_LOGIN_GROUP)
WITH (STATE = ON)
GO
