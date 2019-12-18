/********************************************************************************
  DATALAB ENTERPRISE - Todos los derechos reservados Infolab Ltda.
  PROPOSITO:    Crear una tabla temporal para manejar arreglos en cadenas
  PARAMETROS:   
  EJEMPLO:      dbo.fSplit('11|10', '|')
  FUNC/PROC:    
  AUTOR:        Jcastaneda. *
  FECHA:        2008-04-18.
  MODIFICACIONES:
  4. 2011-09-02. DBanner. (V.1.16) Req. 0001027.
     Se controla el valor de retorno de cuando los dos ultimos delimitados no tienen contenido. El último registro debe devolver un vacio y no el delimitador.
  3. 2009-11-08. GBarreto. * (V.1.10)
     No se devuelven registros cuando la cadena de entrada es vacia.
  2. 2009-10-05. GBarreto. * (V.1.9)
     Se modifica la longitud del parametro de retorno nombre.
  1. 2009-01-07. GBarreto. *
     Se elimina el delimitador del texto cuando termina con deliminador.
********************************************************************************/
    
if exists (select * from dbo.sysobjects where id = object_id(N'[fSplit]') and xtype in (N'FN', N'IF', N'TF'))
drop function [fSplit]
GO

CREATE FUNCTION dbo.fSplit (@Text varchar(max), @Delimiter char(1))
RETURNS @Table table(Code int, strName varchar(max))
WITH ENCRYPTION
AS
BEGIN

	IF (RIGHT(@Text, 2)) = @Delimiter + @Delimiter
		SET @Text = LEFT(@Text, LEN(@Text) - 2) + @Delimiter + '-*-' +  @Delimiter

    IF (RIGHT(@Text, 1) = @Delimiter)
    BEGIN
        SET @Text = LEFT(@Text, LEN(@Text) -1)
    END
    
	DECLARE @I AS integer
	DECLARE @Start AS integer
	DECLARE @End AS integer
	DECLARE @C AS char(1)
	DECLARE @Count AS integer
	SET @I = 1
	SET @Start = 1
	SET @End = 0
	SET @Count = 1
	
	WHILE @I < len(@Text)
	BEGIN
		SET @C = substring(@Text, @I, 1)
		IF @C = @Delimiter
		BEGIN
			SET @End = @I
		END
		IF @End > 0
		BEGIN
			INSERT INTO @Table values(@Count, substring(@Text, @Start, @I - @Start))
			SET @Start = @I + 1
			SET @End = 0
			SET @Count = @Count + 1
		END
		SET @I = @I + 1
	END
	IF len(@Text) > 0
	    INSERT INTO @Table values(@Count, REPLACE(substring(@Text, @Start, @I - @Start + 1), '-*-', ''))
	RETURN 
END
GO