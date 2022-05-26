use proyecto_bd1_2459;

show tables from information_schema; 
select * from information_schema.tables;

-- Tablas
select * from information_schema.tables where table_schema = 'proyecto_bd1_2459';

-- Triggers
select * from information_schema.triggers where trigger_schema = 'proyecto_bd1_2459';

-- Constrainsts
select * from information_schema.table_constraints where constraint_schema = 'proyecto_bd1_2459';

-- Views
select * from information_schema.views where table_schema = 'proyecto_bd1_2459';

-- Indices
select * from information_schema.statistics where table_schema = 'proyecto_bd1_2459';