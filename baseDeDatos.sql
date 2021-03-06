
/* creacion y paso al uso de la base de datos */
CREATE DATABASE DB_LAVADO_AUTOS;
USE DB_LAVADO_AUTOS;

/*Creacion de la tabla TB_LAVADO */
CREATE TABLE TB_LAVADO (
LAVADO_ID INT(10) PRIMARY KEY AUTO_INCREMENT,
LAVADO_NOMBRE VARCHAR(40),
LAVADO_DESCRIPCION TEXT,
LAVADO_FUNCIONARIO VARCHAR(40),
LAVADO_PRECIO INT(10)
);

/*Creacion de la tabla TB_DESINFECCION*/
CREATE TABLE TB_DESINFECCION(
DESINFECCION_ID INT(10) PRIMARY KEY AUTO_INCREMENT,
DESINFECCION_NOMBRE VARCHAR(40),
DESINFECCION_DESCRIPCION TEXT,
DESINFECCION_FUNCIONARIO VARCHAR(40),
DESINFECCION_PRECIO INT(10)
);

/*Creacion de la tabla TB_TIPO_AUTO*/
CREATE TABLE TB_TIPO_AUTO(
TIPO_AUTO_ID INT(10) PRIMARY KEY AUTO_INCREMENT,
TIPO_AUTO_TIPO VARCHAR (10)
);

/*Creacion de la tabla TB_SERVICIO*/
CREATE TABLE TB_SERVICIO(
SERVICIO_ID INT(10) PRIMARY KEY AUTO_INCREMENT,
SERVICIO_CLIENTE VARCHAR(40),
SERVICIO_FECHA DATE,
SERVICIO_TIPO_AUTO_ID INT(10),
SERVICIO_LAVADO_ID INT(10),
SERVICIO_DESINFECCION_ID INT(10),
FOREIGN KEY (SERVICIO_TIPO_AUTO_ID) REFERENCES TB_TIPO_AUTO(TIPO_AUTO_ID),
FOREIGN KEY (SERVICIO_LAVADO_ID) REFERENCES TB_LAVADO(LAVADO_ID),
FOREIGN KEY (SERVICIO_DESINFECCION_ID) REFERENCES TB_DESINFECCION(DESINFECCION_ID)
);


/**/
INSERT INTO `tb_lavado` (`LAVADO_ID`, `LAVADO_NOMBRE`, `LAVADO_DESCRIPCION`, `LAVADO_FUNCIONARIO`, `LAVADO_PRECIO`) VALUES (NULL, 'Lavado basico', 'incluye lavado exterior, lavado interior y aspirada.', 'NN', '10000');
INSERT INTO `tb_lavado` (`LAVADO_ID`, `LAVADO_NOMBRE`, `LAVADO_DESCRIPCION`, `LAVADO_FUNCIONARIO`, `LAVADO_PRECIO`) VALUES (NULL, 'Lavado Especial', 'incluye lavado basico mas polichada con máquina y las mejores ceras de calidad.', 'NN', '20000');
INSERT INTO `tb_lavado` (`LAVADO_ID`, `LAVADO_NOMBRE`, `LAVADO_DESCRIPCION`, `LAVADO_FUNCIONARIO`, `LAVADO_PRECIO`) VALUES (NULL, 'Combo 1', 'Lavado, polichado y desengrasante por debajo.', 'NN', '30000');
INSERT INTO `tb_lavado` (`LAVADO_ID`, `LAVADO_NOMBRE`, `LAVADO_DESCRIPCION`, `LAVADO_FUNCIONARIO`, `LAVADO_PRECIO`) VALUES (NULL, 'Combo 2', 'Combo 1 + grafitado de chasis.', 'NN', '40000');
INSERT INTO `tb_lavado` (`LAVADO_ID`, `LAVADO_NOMBRE`, `LAVADO_DESCRIPCION`, `LAVADO_FUNCIONARIO`, `LAVADO_PRECIO`) VALUES (NULL, 'Combo 3', 'Combo 2 + tapiceria (desmontado de sillas para un aseo profundo).', 'NN', '50000');

/**/
INSERT INTO `tb_desinfeccion` (`DESINFECCION_ID`, `DESINFECCION_NOMBRE`, `DESINFECCION_DESCRIPCION`, `DESINFECCION_FUNCIONARIO`, `DESINFECCION_PRECIO`) VALUES (NULL, 'Desinfección Básica', 'desinfección con máquina generadora de ozono.', 'NN', '10000');
INSERT INTO `tb_desinfeccion` (`DESINFECCION_ID`, `DESINFECCION_NOMBRE`, `DESINFECCION_DESCRIPCION`, `DESINFECCION_FUNCIONARIO`, `DESINFECCION_PRECIO`) VALUES (NULL, 'Desinfección Avanzada', 'desinfección básica + limpieza interior con máquina de vapor.', 'NN', '15000');

/**/
INSERT INTO `tb_tipo_auto` (`TIPO_AUTO_ID`, `TIPO_AUTO_TIPO`) VALUES (NULL,'Automovil');
INSERT INTO `tb_tipo_auto` (`TIPO_AUTO_ID`, `TIPO_AUTO_TIPO`) VALUES (NULL,'Camioneta');




/*prueba insert servicio*/

INSERT INTO `TB_SERVICIO` (SERVICIO_CLIENTE,SERVICIO_FECHA, SERVICIO_TIPO_AUTO_ID, SERVICIO_LAVADO_ID, SERVICIO_DESINFECCION_ID) VALUES('carlos perez','01/11/21','1','1','1');

/*Script usados para el modelo  todos son de prueba para el proyecto*/

Select * from TB_SERVICIO 
inner join tb_lavado on (SERVICIO_LAVADO_ID=LAVADO_ID)
inner join tb_desinfeccion on(SERVICIO_DESINFECCION_ID=DESINFECCION_ID)
inner join TB_TIPO_AUTO on(SERVICIO_TIPO_AUTO_ID= TIPO_AUTO_ID)
where LAVADO_FUNCIONARIO='lucas' or DESINFECCION_FUNCIONARIO='luccas';


select SERVICIO_ID,SERVICIO_FECHA,SERVICIO_CLIENTE,TIPO_AUTO_TIPO,LAVADO_NOMBRE,LAVADO_FUNCIONARIO,LAVADO_PRECIO,DESINFECCION_NOMBRE,DESINFECCION_FUNCIONARIO,DESINFECCION_PRECIO from TB_SERVICIO
inner join tb_lavado on (SERVICIO_LAVADO_ID=LAVADO_ID)
inner join tb_desinfeccion on(SERVICIO_DESINFECCION_ID=DESINFECCION_ID)
inner join TB_TIPO_AUTO on(SERVICIO_TIPO_AUTO_ID= TIPO_AUTO_ID)
where LAVADO_FUNCIONARIO='lucas' or DESINFECCION_FUNCIONARIO='lucas' or SERVICIO_FECHA= 2021-11-10 or LAVADO_NOMBRE = 'Lavado basico' or DESINFECCION_NOMBRE= 'Desinfección Básica' ;


select SERVICIO_ID,SERVICIO_FECHA,SERVICIO_CLIENTE,TIPO_AUTO_TIPO,LAVADO_NOMBRE,LAVADO_FUNCIONARIO,LAVADO_PRECIO,DESINFECCION_NOMBRE,DESINFECCION_FUNCIONARIO,DESINFECCION_PRECIO from TB_SERVICIO
inner join tb_lavado on (SERVICIO_LAVADO_ID=LAVADO_ID)
inner join tb_desinfeccion on(SERVICIO_DESINFECCION_ID=DESINFECCION_ID)
inner join TB_TIPO_AUTO on(SERVICIO_TIPO_AUTO_ID= TIPO_AUTO_ID)
where SERVICIO_FECHA= 2021-11-10;
