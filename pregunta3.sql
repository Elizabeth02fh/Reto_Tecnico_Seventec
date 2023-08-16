-- pregunta 3 parte 1--------
--⮚	Crear un Procedimiento almacenado que de como output el Alcance de la página de Facebook
--según las fecha de inicio y fin se que ingrese como parámetro. 
CREATE PROCEDURE uSp_ListaAlcance_Facebook
   @FechaInicio DATETIME,
   @FechaFin DATETIME
 AS
 BEGIN 
  SELECT Fecha,alca_face FROM Base.Resultados 
  WHERE Fecha = @FechaInicio OR Fecha = @FechaFin;
 END
GO
-- drop procedure facebook;
EXEC uSp_ListaAlcance_Facebook '2021-12-21 00:00:00.000','2022-01-17 00:00:00.000';

SELECT MIN(Fecha) FROM Base.Resultados; --2021-12-21
SELECT MAX(Fecha) FROM Base.Resultados;

-- pregunta 3 parte 2 ------
-- ⮚	Crear una función  que reciba como parámetro la fecha y devuelva la 
-- cantidad de Alcance de Instagram en la fecha especificada. (Tabla:Base.Resultados)
CREATE FUNCTION dbo.FuncionInstagram (@Fecha DATETIME)
RETURNS TABLE 
AS
RETURN (
    SELECT alca_inst FROM Base.Resultados
	WHERE Fecha = @Fecha
);

SELECT alca_inst
FROM dbo.FuncionInstagram('2021-12-21 00:00:00.000');

SELECT * FROM Base.Resultados;

