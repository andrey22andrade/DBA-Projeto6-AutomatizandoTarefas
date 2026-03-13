/************************************************************
 Autor: Landry Duailibe

 Hands On: Provoca alerta Log cheio
*************************************************************/
use master
go

DROP DATABASE IF exists HandsOn
go
CREATE DATABASE HandsOn
ON  PRIMARY (NAME = N'HandsOn', FILENAME = N'C:\MSSQL_Data\HandsOn.mdf' , SIZE = 8MB , FILEGROWTH = 65MB)
LOG ON (NAME = N'HandsOn_log', FILENAME = N'C:\MSSQL_Data\HandsOn_log.ldf' , SIZE = 8MB , MAXSIZE = 40MB , FILEGROWTH = 10MB)
go

/**********************************
  Cria tabela no banco HandsOn
***********************************/
DROP TABLE IF exists HandsOn.dbo.tb_Teste
go
CREATE TABLE HandsOn.dbo.tb_Teste ( 
tb_Teste_ID int identity CONSTRAINT pk_tb_Teste PRIMARY KEY,
ColunaGrande char(6000),
ColunaBigint bigint)
go


/***********************************
 Cria alerta
************************************/
EXEC msdb.dbo.sp_add_alert @name=N'Transction Log FULL', @message_id=9002,@delay_between_responses=0
EXEC msdb.dbo.sp_add_notification @alert_name=N'Transction Log FULL', @operator_name=N'DBA', @notification_method = 1

/***********************************************************
 Executar todo o bloco para popular a tabela com linhas
 - Leva 1 minuto
************************************************************/
use HandsOn
go
set nocount on
go

-- Inclui 100.000 linhas
INSERT HandsOn.dbo.tb_Teste (ColunaGrande,ColunaBigint)
VALUES('Teste',12345)
go 50000
/******************** FIM BLOCO ***************************/

/****************************
 Exclui Banco
*****************************/
use master
go
ALTER DATABASE HandsOn SET READ_ONLY WITH ROLLBACK IMMEDIATE
go
DROP DATABASE IF exists HandsOn


