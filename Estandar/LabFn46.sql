/********************************************************************************
  ENTERPRISE - Todos los derechos reservados CLTech Ltda.
  PROPOSITO:    Validar si un varchar es numero o no (Diferencias con ISNUMERIC, Soporta caracteres especiales como -/%$&., ademas de soportar 
  nuemeros flotantes).
  PARAMETROS:   @num: varchar.
  EJEMPLO:      dbo.LabFn46('string')
  FUNC/PROC:    FUNC
  AUTOR:        BValero
  FECHA:        2019-02-08.
  MODIFICACIONES:
********************************************************************************/

IF EXISTS (select * from dbo.sysobjects where id = object_id(N'[LabFn46]'))
    DROP FUNCTION [LabFn46]
GO

CREATE FUNCTION dbo.LabFn46 (  
    @num VARCHAR(64)  
)  
RETURNS BIT  
BEGIN  
    IF LEFT(@num, 1) = '-'  
        SET @num = SUBSTRING(@num, 2, LEN(@num))  

    DECLARE @pos TINYINT  

    SET @pos = 1 + LEN(@num) - CHARINDEX('.', REVERSE(@num))  

    RETURN CASE  
    WHEN PATINDEX('%[^0-9.-]%', @num) = 0  
        AND @num NOT IN ('.', '-', '+', '^') 
        AND LEN(@num)>0  
        AND @num NOT LIKE '%-%' 
        AND  
        (  
            ((@pos = LEN(@num)+1)  
            OR @pos = CHARINDEX('.', @num))  
        )  
    THEN  
        1  
    ELSE  
    0  
    END  
END  
GO 