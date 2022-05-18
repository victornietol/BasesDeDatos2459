CREATE DATABASE IF NOT EXISTS proyecto_bd1_2459;

USE proyecto_bd1_2459;

DROP TABLE IF EXISTS pais;
CREATE TABLE pais(
	id_pais int NOT NULL AUTO_INCREMENT,
    nombre varchar(70) NOT NULL,
    PRIMARY KEY (id_pais),
    UNIQUE KEY uk_nombre(nombre)
);

DROP TABLE IF EXISTS entidades;
CREATE TABLE entidades(
	id_entidades int NOT NULL AUTO_INCREMENT,
    nombre varchar(50) NOT NULL,
    abreviatura varchar(4) NOT NULL,
    id_pais int NOT NULL,
    PRIMARY KEY (id_entidades),
    UNIQUE KEY uk_nombre(nombre),
    UNIQUE KEY uk_abreviatura(abreviatura),
    FOREIGN KEY (id_pais) REFERENCES pais(id_pais)
    ON DELETE RESTRICT ON UPDATE CASCADE
);

DROP TABLE IF EXISTS provincia;
CREATE TABLE provincia(
	id_provincia int NOT NULL AUTO_INCREMENT,
    codigo smallint NOT NULL,
    nombre varchar(50) NOT NULL,
    PRIMARY KEY (id_provincia),
    UNIQUE KEY uk_codigo(codigo),
    UNIQUE KEY uk_nombre(nombre)
);

DROP TABLE IF EXISTS productor;
CREATE TABLE productor(
	id_productor int NOT NULL AUTO_INCREMENT,
    razon_social varchar(70) NOT NULL,
    rfc varchar(13) NOT NULL,
    produccion_med float NOT NULL,
    produccion_max float NOT NULL,
    id_entidades int NOT NULL,
	fecha_func date NOT NULL,
    PRIMARY KEY (id_productor),
    UNIQUE KEY uk_razon_social(razon_social),
    UNIQUE KEY uk_rfc(rfc),
    FOREIGN KEY (id_entidades) REFERENCES entidades(id_entidades)
    ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS centrales;
CREATE TABLE centrales(
	id_central int NOT NULL AUTO_INCREMENT,
	nombre varchar(14) NOT NULL,
	PRIMARY KEY (id_central),
	UNIQUE KEY uk_nombre(nombre)
);

DROP TABLE IF EXISTS productor_centrales;
CREATE TABLE productor_centrales(
	id int NOT NULL AUTO_INCREMENT,
    id_productor int NOT NULL,
    id_central int NOT NULL,
    fecha_fundacion date NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_productor) REFERENCES productor(id_productor)
    ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (id_central) REFERENCES centrales(id_central)
    ON DELETE RESTRICT ON UPDATE CASCADE
);

DROP TABLE IF EXISTS hidroelectrica;
CREATE TABLE hidroelectrica(
	id_hidroelectrica int NOT NULL AUTO_INCREMENT,
    id_productor int NOT NULL,
    id_central int NOT NULL,
    ocupacion varchar(200) NOT NULL,
    capacidad_max float NOT NULL,
    num_turbinas int NOT NULL,
    PRIMARY KEY (id_hidroelectrica),
    FOREIGN KEY (id_productor) REFERENCES productor(id_productor)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_central) REFERENCES centrales(id_central)
    ON DELETE CASCADE ON UPDATE CASCADE,
    UNIQUE KEY uk_hidro_productor(id_hidroelectrica, id_productor)
);

DROP TABLE IF EXISTS solar;
CREATE TABLE solar(
	id_solar int NOT NULL AUTO_INCREMENT,
    id_productor int NOT NULL,
    id_central int NOT NULL,
    paneles_solares float NOT NULL,
    horas_sol int NOT NULL,
    tipo varchar(13) NOT NULL,
    PRIMARY KEY (id_solar),
    FOREIGN KEY (id_productor) REFERENCES productor(id_productor)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_central) REFERENCES centrales(id_central)
    ON DELETE CASCADE ON UPDATE CASCADE,
    UNIQUE KEY uk_solar_productor(id_solar, id_productor)
);

DROP TABLE IF EXISTS nuclear;
CREATE TABLE nuclear(
	id_nuclear int NOT NULL AUTO_INCREMENT,
    id_productor int NOT NULL,
    id_central int NOT NULL,
    num_reactores int NOT NULL,
    vol_plutonio float NOT NULL,
    vol_residuos int NOT NULL,
    PRIMARY KEY (id_nuclear),
    FOREIGN KEY (id_productor) REFERENCES productor(id_productor)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_central) REFERENCES centrales(id_central)
    ON DELETE CASCADE ON UPDATE CASCADE,
    UNIQUE KEY uk_nuclear_productor(id_nuclear, id_productor)
);

DROP TABLE IF EXISTS termica;
CREATE TABLE termica(
	id_termica int NOT NULL AUTO_INCREMENT,
    id_productor int NOT NULL,
    id_central int NOT NULL,
    num_hornos int NOT NULL,
    vol_carbon float NOT NULL,
    vol_gases float NOT NULL,
    PRIMARY KEY (id_termica),
    FOREIGN KEY (id_productor) REFERENCES productor(id_productor)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_central) REFERENCES centrales(id_central)
    ON DELETE CASCADE ON UPDATE CASCADE,
    UNIQUE KEY uk_termica_productor(id_termica, id_productor)
);

DROP TABLE IF EXISTS suministrador;
CREATE TABLE suministrador(
	id_suministrador int NOT NULL AUTO_INCREMENT,
    nombre varchar(100) NOT NULL,
    id_pais int NOT NULL,
    PRIMARY KEY (id_suministrador),
    FOREIGN KEY (id_pais) REFERENCES pais(id_pais)
    ON DELETE RESTRICT ON UPDATE CASCADE
);

DROP TABLE IF EXISTS transportista;
CREATE TABLE transportista(
	id_transportista int NOT NULL AUTO_INCREMENT,
    razon_social varchar(70) NOT NULL,
    rfc varchar(13) NOT NULL,
    PRIMARY KEY (id_transportista),
    UNIQUE KEY uk_razon_social(razon_social),
    UNIQUE KEY uk_rfc(rfc)
);

DROP TABLE IF EXISTS porte;
CREATE TABLE porte(
	id_porte int NOT NULL AUTO_INCREMENT,
    id_transportista int NOT NULL,
    descripcion varchar(250) NULL DEFAULT 'TRANSPORTE PLUTONIO',
    fecha_registro datetime NOT NULL,
    fecha_realizacion datetime NOT NULL,
    PRIMARY KEY (id_porte),
    FOREIGN KEY (id_transportista) REFERENCES transportista(id_transportista)
    ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS ventas;
CREATE TABLE ventas(
	id_venta int NOT NULL AUTO_INCREMENT,
    id_suministrador int NOT NULL,
    id_nuclear int NOT NULL,
    id_porte int NOT NULL,
    descripcion varchar(250) NULL DEFAULT 'VENTA PLUTONIO',
    cantidad_plutonio float NOT NULL,
    fecha datetime NOT NULL,
    PRIMARY KEY (id_venta),
    FOREIGN KEY (id_suministrador) REFERENCES suministrador(id_suministrador)
    ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (id_nuclear) REFERENCES nuclear(id_nuclear)
    ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (id_porte) REFERENCES porte(id_porte)
    ON DELETE RESTRICT ON UPDATE CASCADE,
    UNIQUE KEY uk_venta_porte(id_venta, id_porte)
);

DROP TABLE IF EXISTS estacion;
CREATE TABLE estacion(
	id_estacion int NOT NULL AUTO_INCREMENT,
    nombre varchar(70) NOT NULL,
    num_transformadores int NOT NULL,
    PRIMARY KEY (id_estacion),
    UNIQUE KEY uk_nombre(nombre)
);

DROP TABLE IF EXISTS entregar_energia;
CREATE TABLE entregar_energia(
	id int NOT NULL AUTO_INCREMENT,
    id_productor int NOT NULL,
    id_estacion int NOT NULL, 
    energia_entregada int NOT NULL,
    fecha date NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_productor) REFERENCES productor(id_productor)
    ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (id_estacion) REFERENCES estacion(id_estacion)
    ON DELETE RESTRICT ON UPDATE CASCADE
);

DROP TABLE IF EXISTS red;
CREATE TABLE red(
	id_red int NOT NULL AUTO_INCREMENT,
    id_estacion int NOT NULL,
    num_red int NOT NULL,
    PRIMARY KEY (id_red),
    FOREIGN KEY (id_estacion) REFERENCES estacion(id_estacion)
    ON DELETE CASCADE ON UPDATE CASCADE,
    UNIQUE KEY uk_n_red(num_red)
);

DROP TABLE IF EXISTS intercambia_energia;
CREATE TABLE intercambia_energia(
	id int NOT NULL AUTO_INCREMENT,
    id_red int NOT NULL,
    id_intercambia_con int NOT NULL,
    energia_inter float NOT NULL,
    fecha date NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_red) REFERENCES red(id_red)
    ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (id_intercambia_con) REFERENCES red(id_red)
    ON DELETE RESTRICT ON UPDATE CASCADE
);

DROP TABLE IF EXISTS compania;
CREATE TABLE compania(
	id_compania int NOT NULL AUTO_INCREMENT,
    id_red int NOT NULL,
    nombre varchar(70) NOT NULL,
    PRIMARY KEY (id_compania),
    FOREIGN KEY (id_red) REFERENCES red(id_red)
    ON DELETE CASCADE ON UPDATE CASCADE,
    UNIQUE KEY uk_nombre(nombre)
);

DROP TABLE IF EXISTS linea;
CREATE TABLE linea(
	id_linea int NOT NULL AUTO_INCREMENT,
    id_red int NOT NULL,
    num_linea tinyint unsigned NOT NULL,
    PRIMARY KEY (id_linea),
    FOREIGN KEY (id_red) REFERENCES red(id_red)
    ON DELETE CASCADE ON UPDATE CASCADE,
    UNIQUE KEY uk_linea(num_linea, id_red)
);

DROP TABLE IF EXISTS subestacion;
CREATE TABLE subestacion(
	id_subestacion int NOT NULL AUTO_INCREMENT,
    id_linea int NOT NULL,
    nombre varchar(50) NOT NULL,
    PRIMARY KEY (id_subestacion),
    FOREIGN KEY (id_linea) REFERENCES linea(id_linea)
    ON DELETE CASCADE ON UPDATE CASCADE,
    UNIQUE INDEX idx_subestacion_n(id_subestacion, nombre)
);

DROP TABLE IF EXISTS zona;
CREATE TABLE zona(
	id_zona int NOT NULL AUTO_INCREMENT,
    id_provincia int NOT NULL,
    nombre varchar(50) NOT NULL,
    PRIMARY KEY (id_zona),
    FOREIGN KEY (id_provincia) REFERENCES provincia(id_provincia)
    ON DELETE CASCADE ON UPDATE CASCADE,
	UNIQUE INDEX idx_zona_n(id_zona, nombre)
);

DROP TABLE IF EXISTS distribuye;
CREATE TABLE distribuye(
	id int NOT NULL AUTO_INCREMENT,
	id_subestacion int NOT NULL,
    id_zona int NOT NULL,
    fecha_inic date NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_subestacion) REFERENCES subestacion(id_subestacion)
    ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (id_zona) REFERENCES zona(id_zona)
    ON DELETE RESTRICT ON UPDATE CASCADE
);

DROP TABLE IF EXISTS consumidores_cat;
CREATE TABLE consumidores_cat(
	id_consumidor int NOT NULL AUTO_INCREMENT,
    nombre varchar(13) NOT NULL,
    PRIMARY KEY (id_consumidor),
    UNIQUE KEY uk_nombre(nombre)
);

DROP TABLE IF EXISTS info_consumidor;
CREATE TABLE info_consumidor(
	id_zona int NOT NULL,
    id_consumidor int NOT NULL,
    consumo_medio float NOT NULL,
    num_consumidores int NOT NULL,
    fecha date NOT NULL,
    FOREIGN KEY (id_zona) REFERENCES zona(id_zona)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_consumidor) REFERENCES consumidores_cat(id_consumidor)
    ON DELETE CASCADE ON UPDATE CASCADE,
    UNIQUE KEY uk_zona_consumidor_fecha(id_zona, id_consumidor, fecha)
);
