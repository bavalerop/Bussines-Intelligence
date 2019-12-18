/********************************************************************************
  ENTERPRISE - Todos los derechos reservados CLTech Ltda.
  PROPOSITO:      Diferencia en años, meses, dias, entre dos fechas.
  PARAMETROS:     @Lab21C10:  Fecha inicial.
                  @Lab21C10E: Fecha final.
  EJEMPLO:        SELECT dbo.LabFn05('20120418', GETDATE())
  OBJ. AFECTADOS: 
  AUTOR:          BVALERO
  FECHA:          2019-01-10. 
********************************************************************************/

IF exists (select * from dbo.sysobjects where id = object_id(N'[LabFn05B]') and xtype in (N'FN', N'IF', N'TF'))
    DROP FUNCTION [LabFn05B]
GO

CREATE FUNCTION dbo.LabFn05B(@Lab21C10 DATETIME, @Lab21C10E DATETIME)
RETURNS VARCHAR(9)
WITH ENCRYPTION
AS
BEGIN
    DECLARE @Result VARCHAR(9)
    DECLARE @Part1 AS INT , @Part2 AS INT, @Part3 AS INT; 

    SET @Part1 = datediff("yy", @Lab21C10, @Lab21C10E)
    IF dateadd("yy", @Part1, @Lab21C10) > @Lab21C10E set @Part1 = @Part1 - 1
        SET @Lab21C10 = dateadd("yy", @Part1, @Lab21C10)
    SET @Part2 = datediff("mm", @Lab21C10, @Lab21C10E)
    IF dateadd("mm", @Part2, @Lab21C10) > @Lab21C10E set @Part2 = @Part2 - 1
        SET @Lab21C10 = dateadd("mm", @Part2, @Lab21C10)
    SET @Part3 = datediff("dd", @Lab21C10, @Lab21C10E)

    IF @Part1 > 0
    BEGIN
        IF @Part1 = 1
            SET @Result = CAST(@Part1 AS VARCHAR)
        ELSE
            SET @Result = CAST(@Part1 AS VARCHAR)
    END
    ELSE
    BEGIN
        IF @Part1 = 0 AND @Part2 > 0
        BEGIN
            IF @Part2 = 1
                SET @Result = CAST(@Part2 AS VARCHAR) 
            ELSE
                SET @Result = CAST(@Part2 AS VARCHAR) 
        END
        ELSE
        BEGIN
            IF @Part3 = 1
			    SET @Result = CAST(@Part3 AS VARCHAR) 
		    ELSE
			    SET @Result = CAST(@Part3 AS VARCHAR) 
        END
    END

    RETURN @Result
END
GO
