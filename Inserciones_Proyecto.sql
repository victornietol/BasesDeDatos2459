USE proyecto_bd1_2459_prueba;

-- PAISES
INSERT INTO pais VALUES (null,'mexico'),(null,'kazajistan'),(null,'canada'),(null,'australia'),(null,'niger'),(null,'namibia'),(null,'rusia'),(null,'uzbekistan'),(null,'estados unidos'),(null,'china'),(null,'ucrania'),(null,'sudafrica'),(null,'republica checa'),(null,'brasil'),(null,'india'),(null,'rumania'),(null,'alemania');


-- ENTIDADES
INSERT INTO entidades VALUES (null,'aguascalientes','ags'),(null,'baja california','bc'),(null,'baja california sur','bcs'),(null,'campeche','camp'),(null,'coahuila','coah'),(null,'colima','col'),(null,'chiapas','chis'),(null,'chihuahua','chih'),(null,'ciudad de mexico','cdmx'),(null,'durango','dgo'),(null,'guanajuato','gto'),(null,'guerrero','gro'),(null,'hidalgo','hgo'),(null,'jalisco','jal'),(null,'estado de mexico','mex'),(null,'michoacan','mich'),(null,'morelos','mor'),(null,'nayarit','nay'),(null,'nuevo leon','nl'),(null,'oaxaca','oax'),(null,'puebla','pue'),(null,'queretaro','qro'),(null,'quintana roo','qroo'),(null,'san luis potosi','slp'),(null,'sinaloa','sin'),(null,'sonora','son'),(null,'tabasco','tab'),(null,'tamaulipas','tam'),(null,'tlaxcala','tlax'),(null,'veracruz','ver'),(null,'yucatan','yuc'),(null,'zacatecas','zac');


-- PROVINCIAS


-- CENTRALES
INSERT INTO centrales VALUES (null,'hidroelectrica'),(null,'solar'),(null,'nuclear'),(null,'termica');


-- CONSUMIDORES_CAT
INSERT INTO consumidores_cat VALUES (null,'particulares'),(null,'empresas'),(null,'instituciones');


-- PRODUCTOR 
INSERT INTO productor VALUES (null,'Murray-Barrows','MUB840430C3FD',25919.00,44908.00,1,'1984-04-30'),(null,'Streich Group','STG040423FDS8',24445.83,47242.97,2,'2004-04-23'),(null,'Abshire Inc','ABI940608F7DF',20602.64,46682.09,3,'1994-06-08'),(null,'Sanford LLC','SLC100127DF77',21071.56,41833.45,4,'2010-01-27'),(null,'Daniel-Prosacco','DPO870408J8FD',22126.42,42121.45,5,'1987-04-08'),(null,'Durgan Inc','DIC940414LL9D',29313.73,47620.11,6,'1994-04-14'),(null,'Armstrong Group','AMG030114JF84',20352.71,49945.21,7,'2003-01-14'),(null,'Prohaska and Sons','PAS910626NJ8D',25072.15,45362.80,8,'1991-06-26'),(null,'Jast-Yost','JYT911002KF9R',24181.95,36722.45,9,'1991-10-02'),(null,'Kerluke Group','KLG810822OUP9',20927.54,46900.61,10,'1981-08-22'),(null,'Ondricka, Schiller and Rau','OSR960213MME3',24269.10,40055.50,12,'1996-02-13'),(null,'Monahan Windler Group','MWG031018WIN3',23659.64,35684.62,13,'2003-10-18'),(null,'Parker-Erdman S.A.','PES070407ASE5',24411.30,40249.74,14,'2007-04-07'),(null,'Raynor and Von S.A.','RVS020114SV8F',29433.83,45765.02,15,'2002-01-14'),(null,'DAmore Group','DAG881107FK45',20977.12,36543.20,16,'1988-11-07'),(null,'Reichert LLC','REL000131D8IS',20261.16,41809.35,17,'2000-01-31'),(null,'Davis Group S.A.','DGS960110KG9G',27027.40,48850.70,25,'1996-01-10'),(null,'Energy Marvin','ENM951027JU8V',28952.76,48394.26,18,'1995-10-27');


-- CENTRALES PERTENECIENTES A PRODUCTORES
INSERT INTO productor_centrales VALUES (null,1,1,'1984-04-30'),(null,1,4,'1985-04-30'),(null,2,2,'2004-04-23'),(null,3,1,'1994-06-08'),(null,3,3,'1995-06-08'),(null,4,2,'2010-01-27'),(null,5,1,'1987-04-08'),(null,5,2,'1988-04-08'),(null,5,4,'1990-04-08'),(null,6,3,'1994-04-14'),(null,7,2,'2003-01-14'),(null,8,4,'1991-06-26'),(null,9,3,'1991-10-02'),(null,10,4,'1981-08-22'),(null,11,1,'1996-02-13'),(null,11,3,'1998-02-13'),(null,12,2,'2003-10-18'),(null,13,1,'2007-04-07'),(null,14,2,'2002-01-14'),(null,15,1,'1988-11-07'),(null,15,2,'1990-11-07'),(null,16,3,'2000-01-31'),(null,17,2,'1996-01-10'),(null,18,1,'1995-10-27'),(null,18,4,'1997-10-27');


-- CENTRALES HIDROELECTRICAS
INSERT INTO hidroelectrica VALUES (null,1,1,'Produccion de energia',22452,30),(null,3,1,'Produccion de energia cinetica',23341,40),(null,5,1,'Produccion de energia cinetica',14040.0,39),(null,11,1,'Produccion de energia',20027.2,35),(null,13,1,'Produccion de energia',40249.7,48),(null,15,1,'Generacion de energia cinetica',36543.2,47),(null,18,1,'Generacion de energia',24197.15,38);


-- CENTRALES SOLARES
INSERT INTO solar VALUES (null,2,2,331.49,7779,'fotovoltaica'),(null,4,2,293.54,7595,'fotovoltaica'),(null,5,2,230.23,6778,'termodinamica'),(null,7,2,355.44,6840,'fotovoltaica'),(null,12,2,381.55,7229,'termodinamica'),(null,14,2,259.76,7160,'termodinamica'),(null,15,2,229.61,7346,'fotovoltaica'),(null,17,2,337.18,7459,'fotovoltaica');


-- CENTRALES NUCLEARES
INSERT INTO nuclear VALUES (null,3,3,9,3675.67,1218),(null,6,3,9,4116.02,1021),(null,9,3,5,2030.05,1371),(null,11,3,10,4508.4,1148),(null,16,3,7,4517.21,1641);


-- CENTRALES TERMICAS
INSERT INTO termica VALUES (null,1,4,51,14405.8,5452.29),(null,5,4,32,13370.83,7403.04),(null,8,4,44,12690.15,5800.3),(null,10,4,35,9476.21,6407.7),(null,18,4,84,14769.23,7116.36);


-- SUMINISTRADORES
INSERT INTO suministrador VALUES (null,'McArthur River',3),(null,'Ranger',4),(null,'Olimpic Dam',4),(null,'Kraznokamensk',7),(null,'Arlit',5),(null,'Tortkuduk',2),(null,'Budenovskoye 2',2),(null,'South Inkai',2),(null,'Rossing',6),(null,'Sierra Penia Blanca',1);


-- TRANSPORTISTAS
INSERT INTO transportista VALUES (null,'Southern Edison Company','CZN480840G7TB'),(null,'Biddle Properties Inc','VSL8576542RX6'),(null,'NuStar Logistics','GJX3309172PJO'),(null,'Pacific Continental Corporation','EQY061811SI8Q'),(null,'AlphaDEX Corp','IXJ442182MXA3');


-- PORTES
INSERT INTO porte VALUES (null,2,'plutonio','2019-02-05 00:14:23','2019-02-10 12:14:23'),(null,5,'plutonio transporte','2019-03-05 06:14:23','2019-03-10 12:00:23'),(null,2,'plutonio','2019-04-05 10:24:23','2019-04-10 12:20:23'),(null,5,null,'2019-05-05 14:24:23','2019-05-10 07:20:00'),(null,1,null,'2019-06-05 06:30:23','2019-06-10 07:20:00'),(null,2,null,'2016-06-14 19:44:58','2016-06-19 19:44:00'),(null,4,null,'2016-07-14 20:44:58','2016-07-19 12:30:00'),(null,3,null,'2016-08-14 13:44:58','2016-08-19 06:50:00'),(null,2,null,'2016-09-14 16:28:58','2016-09-19 11:20:00'),(null,3,null,'2016-10-14 04:44:39','2016-10-19 22:00:00'),(null,1,'plutonio trans','2012-11-07 03:19:49','2012-11-12 03:19:49'),(null,4,'plutonio trans','2012-12-07 06:19:49','2012-12-12 08:19:00'),(null,2,'plutonio trans','2013-01-07 12:19:49','2013-01-12 15:30:00'),(null,4,null,'2013-02-07 12:40:49','2013-02-12 12:30:00'),(null,3,null,'2013-03-07 20:40:49','2013-03-12 02:30:00'),(null,1,'precaucion plutonio','2003-07-13 14:58:37','2003-07-18 14:00:00'),(null,2,null,'2003-08-13 23:22:37','2003-08-18 18:00:00'),(null,4,'precaucion plutonio','2003-09-13 19:58:37','2003-09-18 01:00:00'),(null,2,'precaucion plutonio','2003-10-13 09:36:37','2003-10-18 06:30:00'),(null,4,'precaucion plutonio','2003-11-13 07:58:37','2003-11-18 05:40:00'),(null,2,null,'2015-05-25 20:50:43','2015-05-30 18:50:00'),(null,4,null,'2015-06-25 12:34:43','2015-06-30 06:30:00'),(null,4,null,'2015-07-25 17:23:43','2015-07-30 08:30:00'),(null,1,null,'2015-08-25 22:34:43','2015-08-30 12:30:00'),(null,4,null,'2015-09-25 09:15:43','2015-09-30 11:30:00');

-- VENTAS
INSERT INTO ventas VALUES (null,7,1,1,'plutonio',3727.3,'2019-02-05 00:14:23'),(null,2,1,2,'plutonio',3895.15,'2019-03-05 06:14:23'),(null,4,1,3,'plutonio',3977.23,'2019-04-05 10:24:23'),(null,5,1,4,'plutonio',3916.8,'2019-05-05 14:24:23'),(null,4,1,5,'plutonio',3658.14,'2019-06-05 06:30:23'),(null,9,2,6,null,4180.14,'2016-06-14 19:44:58'),(null,9,2,7,null,4100.17,'2016-07-14 20:44:58'),(null,2,2,8,null,4128.78,'2016-08-14 13:44:58'),(null,4,2,9,null,4187.93,'2016-09-14 16:28:58'),(null,4,2,10,'plutonio central nuclear',4146.14,'2016-10-14 04:44:39'),(null,1,3,11,'plutonio',2046.45,'2012-11-07 03:19:49'),(null,2,3,12,'plutonio',2021.85,'2012-12-07 06:19:49'),(null,7,3,13,'plutonio',2070.72,'2013-01-07 12:19:49'),(null,10,3,14,'plutonio',2025.69,'2013-02-07 12:40:49'),(null,2,3,15,null,2090.77,'2013-03-07 20:40:49'),(null,1,4,16,'compra-venta plutonio',4502.75,'2003-07-13 14:58:37'),(null,5,4,17,'compra-venta plutonio',4535.4,'2003-08-13 23:22:37'),(null,8,4,18,'compra-venta plutonio',4592.43,'2003-09-13 19:58:37'),(null,6,4,19,'compra-venta plutonio',4540.69,'2003-10-13 09:36:37'),(null,3,4,20,'compra-venta plutonio',4572.92,'2003-11-13 07:58:37'),(null,1,5,21,null,4496.48,'2015-05-25 20:50:43'),(null,4,5,22,null,4550.42,'2015-06-25 12:34:43'),(null,4,5,23,null,4457.52,'2015-07-25 17:23:43'),(null,2,5,24,null,4540.31,'2015-08-25 22:34:43'),(null,3,5,25,null,4534.99,'2015-09-25 09:15:43');

-- ESTACIONES
INSERT INTO estacion VALUES (null,'EST-496CR-P',20),(null,'EST-559XY-P',16),(null,'EST-311QM-P',40),(null,'EST-048DW-P',21),(null,'EST-642JW-P',19),(null,'EST-001TJ-P',36),(null,'EST-035LG-P',17),(null,'EST-874AL-P',26),(null,'EST-850OL-P',34),(null,'EST-946WZ-P',28),(null,'EST-958OY-P',28),(null,'EST-805QR-P',27),(null,'EST-691ER-P',39),(null,'EST-830XN-P',32),(null,'EST-772ML-P',33);


-- ENTREGAR_ENERGIA
INSERT INTO entregar_energia VALUES (null,6,2,23810,'2020-07-24'),(null,6,1,20180,'2020-07-24'),(null,7,13,49940,'2020-07-24'),(null,15,15,18271,'2020-07-24'),(null,15,4,18271,'2020-07-24'),(null,13,11,13416,'2020-07-24'),(null,13,7,13416,'2020-07-24'),(null,13,1,13416,'2020-07-24'),(null,5,6,10530,'2020-07-24'),(null,5,11,10430,'2020-07-24'),(null,5,8,10630,'2020-07-24'),(null,5,7,10530,'2020-07-24'),(null,10,3,24450,'2020-07-24'),(null,10,5,22450,'2020-07-24'),(null,12,10,11894,'2020-07-24'),(null,12,9,11494,'2020-07-24'),(null,12,12,12294,'2020-07-24'),(null,2,14,47243,'2020-07-24'),(null,8,6,15120,'2020-07-24'),(null,8,2,11120,'2020-07-24'),(null,8,15,19120,'2020-07-24'),(null,11,1,20020,'2020-07-24'),(null,11,7,20027,'2020-07-24'),(null,1,3,14969,'2020-07-24'),(null,1,9,10969,'2020-07-24'),(null,1,7,18969,'2020-07-24'),(null,9,12,30000,'2020-07-24'),(null,9,15,6722,'2020-07-24'),(null,17,14,12012,'2020-07-24'),(null,17,12,11212,'2020-07-24'),(null,17,13,13212,'2020-07-24'),(null,17,4,12412,'2020-07-24'),(null,3,1,20341,'2020-07-24'),(null,3,13,26341,'2020-07-24'),(null,18,9,11098,'2020-07-24'),(null,18,3,13098,'2020-07-24'),(null,18,7,9098,'2020-07-24'),(null,18,14,15098,'2020-07-24'),(null,4,8,36833,'2020-07-24'),(null,4,7,5000,'2020-07-24'),(null,14,13,11341,'2020-07-24'),(null,14,2,11541,'2020-07-24'),(null,14,5,10441,'2020-07-24'),(null,14,6,12441,'2020-07-24'),(null,16,14,17904,'2020-07-24'),(null,16,11,23904,'2020-07-24');


-- REDES 
INSERT INTO red VALUES (null,1,1001),(null,1,1002),(null,2,2001),(null,3,3001),(null,3,3002),(null,3,3003),(null,3,3004),(null,4,4001),(null,4,4002),(null,5,5001),(null,5,5002),(null,6,6001),(null,6,6002),(null,6,6003),(null,7,7001),(null,8,8001),(null,8,8002),(null,9,9001),(null,9,9002),(null,9,9003),(null,10,1101),(null,10,1102),(null,10,1103),(null,11,1201),(null,11,1202),(null,11,1203),(null,12,1301),(null,12,1302),(null,12,1303),(null,13,1401),(null,13,1402),(null,13,1403),(null,13,1404),(null,14,1501),(null,14,1502),(null,14,1503),(null,15,1601),(null,15,1602),(null,15,1603);


-- INTERCAMBIA_ENERGIA
INSERT INTO intercambia_energia VALUES (null,1,2,'1675.92','2020-05-03'),(null,5,7,'2920.41','2020-10-11'),(null,5,4,'1244.29','2020-10-11'),(null,5,7,'2920.41','2020-10-11'),(null,10,11,'2347.59','2020-08-03'),(null,14,12,'1010.44','2020-05-31'),(null,14,13,'941.67','2020-05-31'),(null,19,20,'2576.79','2020-04-04'),(null,29,28,'2389.13','2020-05-08'),(null,38,39,'1355.67','2021-04-22'),(null,38,37,'655.54','2021-04-22');


-- COMPANIAS

