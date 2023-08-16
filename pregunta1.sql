-- Crear la base de datos con el nombre "FLORES"
CREATE DATABASE FLORES
ON PRIMARY
(
    NAME = FLORES_Data,
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\FLORES.mdf', -- Ruta y nombre para el archivo MDF
    SIZE = 92160KB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 65536KB
)
LOG ON
(
    NAME = FLORES_Log,
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\FLORES.ldf', -- Ruta y nombre para el archivo LDF
    SIZE = 14475KB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 65536KB
)
GO

-- Agregar un archivo NDF al grupo de archivos [INDICES]
ALTER DATABASE FLORES
ADD FILEGROUP INDICES;
GO

ALTER DATABASE FLORES
ADD FILE
(
    NAME = FLORES_Indices,
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\FLORES_indices.ndf', -- Ruta y nombre para el archivo NDF
    SIZE = 14475KB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 65536KB
)
TO FILEGROUP INDICES;
GO
