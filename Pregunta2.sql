----Pregunta2---------------------------
---Pregunta2_Parte1-------------------
use FLORES

-- Crear la tabla en el esquema 'Base'
CREATE SCHEMA Base;
CREATE TABLE Base.Resultados (
    -- Columnas de la tabla
    Fecha DATETIME,
    alca_face int,
    alca_inst int,
    -- Definir el índice clustered en la columna 'Fecha'
    CONSTRAINT Cls_Idx_Fecha PRIMARY KEY CLUSTERED (Fecha)
);

SELECT * FROM Base.Resultados

---Pregunta2_Parte2-------------------
-- Agregar la columna "Resultados" con valores predefinidos
ALTER TABLE Base.Resultados
ADD Resu VARCHAR(15);
-- Actualizar los primeros 28 registros con los valores deseados
UPDATE Base.Resultados
SET Resu = 'Resultados';

-- Agregar la columna "FechaCarga" para la fecha y hora de carga
ALTER TABLE Base.Resultados
ADD Fech_carg DATETIME;
-- Actualizar la columna "FechaCarga" con la fecha y hora actuales
UPDATE Base.Resultados
SET Fech_carg = GETDATE();










