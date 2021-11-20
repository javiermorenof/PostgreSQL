--Más información:
-- https://dev.mysql.com/doc/mysql-infoschema-excerpt/8.0/en/information-schema-table-reference.html

--Información sobre cada esquema del catálogo
SELECT * FROM information_schema.schemata;

-- Información sobre toda las tablas de un esquema
SELECT * FROM information_schema.tables WHERE table_schema='videogames';

-- Información sobre toda las columnas de un esquema
SELECT * FROM information_schema.columns WHERE table_schema='videogames';

-- Información sobre toda las constraints de un esquema
SELECT * FROM information_schema.table_constraints WHERE table_schema='videogames';

-- Información sobre los dominios de los esquemas
SELECT * FROM information_schema.domains;

--Información sobre las vistas
SELECT * FROM information_schema.views;