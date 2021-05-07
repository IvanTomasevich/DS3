-- 1)
-- en Equipos
-- Si el ciclista a insertar pertenece a un equipo nuevo, primero inserto el equipo 
INSERT INTO equipos(nombre_equipo, director)
VALUES ('Valencia', 'Ariel Martinez');

-- en Ciclistas
--  No incluir el campo "numero" en el insert, ya que esta definido como AUTO_INCREMENT
INSERT INTO `ciclistas` (`nombre`, `edad`, `equipo`) VALUES
('Maria Mendoza', 31, 'Valencia'),
( 'Juan de la Fuente', 20, 'Banesto'),
( 'Sara Ibarra', 29, 'ONCE');


-- 2) 
-- Borro utilizando la clave primaria en la clausula where
DELETE FROM `ciclistas` WHERE numero='101';

-- 3)
-- Primero consulto el registro a actualizar
SELECT * FROM ciclistas where UPPER (`ciclistas`.`nombre`) like' TONY ROMINGER%';
-- Actualizo el registro utilizando la clave primaria
UPDATE `ciclistas`SET`nombre` = 'Antonio Rominger'WHERE `numero` = 4;

-- 4)
SELECT * FROM ciclistas;

-- 5)
SELECT `ciclistas`.`numero`, `ciclistas`.`nombre` FROM `ciclistas`order by `ciclistas`.`nombre`;
-- Por defecto el orden es ascendente, pero se puede especificar
SELECT `ciclistas`.`numero`, `ciclistas`.`nombre` FROM `ciclistas`order by `ciclistas`.`nombre` ASC;

-- 6)
SELECT nombre FROM ciclistas WHERE numero=19;

-- 7)
SELECT nombre, numero FROM ciclistas WHERE edad>=30;

-- 8)
SELECT * FROM ciclistas WHERE UPPER(equipo) LIKE 'MERCATONE UNO%';

-- 9)
SELECT numero, nombre FROM ciclistas WHERE nombre LIKE 'Angel%';

--  10)
SELECT * FROM equipos;

-- 11)
SELECT * FROM ciclistas WHERE UPPER(equipo) LIKE 'BANESTO%' AND edad<30;

-- 12)
SELECT director FROM equipos WHERE UPPER(nombre_equipo) LIKE 'BANESTO%';

-- 13)
SELECT * FROM etapas;

-- 14)
SELECT * FROM ciclismo.etapas WHERE numero_etapa = 11 ;
UPDATE etapas SET llegada = 'Estacion de Cerler' WHERE numero_etapa = 11 ;

-- 15)
SELECT COUNT(*) FROM etapas WHERE kms>40;