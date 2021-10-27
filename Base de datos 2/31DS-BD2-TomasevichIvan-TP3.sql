-- ###### Ejercicio 1 ######
-- Creacion de la vista
CREATE
    ALGORITHM = UNDEFINED
    DEFINER = `root`@`%`
    SQL SECURITY DEFINER
VIEW `autores_recetas` AS
    SELECT
        CONCAT(`c`.`nombre`, ' ', `c`.`apellido`) AS `Chef autor`,
        `c`.`nacionalidad` AS `Nacionalidad`,
        `r`.`nombre` AS `Receta`,
        `r`.`fecha_creacion` AS `Creado el`
    FROM
        (`chefs` `c`
        JOIN `recetas` `r` ON ((`c`.`id` = `r`.`id_chef_inventor`)))
    WHERE
        (`r`.`fecha_creacion` > CAST('2013-01-01' AS DATE))


-- Select de la vista
SELECT * FROM Recetas.autores_recetas;

-- Modificacion de la vista para que pueda incluir el update
CREATE
    ALGORITHM = UNDEFINED
    DEFINER = `root`@`%`
    SQL SECURITY DEFINER
VIEW `autores_recetas` AS
    SELECT
        CONCAT(`c`.`nombre`, ' ', `c`.`apellido`) AS `Chef autor`,
        `c`.`nacionalidad` AS `Nacionalidad`,
        `r`.`nombre` AS `Receta`,
        `r`.`fecha_creacion` AS `Creado el`
    FROM
        (`chefs` `c`
        JOIN `recetas` `r` ON ((`c`.`id` = `r`.`id_chef_inventor`)))
    WHERE
        (`r`.`fecha_creacion` > CAST('2013-01-01' AS DATE)) with check option

 -- Update exitoso de la vista
UPDATE Recetas.autores_recetas set Creado_el="2015-08-08" where Receta='Guiso del chalten';

--Update erroneo de la vista
UPDATE Recetas.autores_recetas set Creado_el="2011-08-08" where Receta='Guiso del chalten';

-- Inster en la vista
INSERT INTO Recetas.autores_recetas
(Chef_autor, Nacionalidad)
VALUES ('Ivan Tomasevich', 'Argentina');

-- Delete en la vista
DELETE FROM Recetas.autores_recetas
where Receta='Guiso del chalten';

-- ###### Ejercicio 2 ######
--Creacion de la vista
CREATE
    ALGORITHM = UNDEFINED
    DEFINER = `root`@`%`
    SQL SECURITY DEFINER
VIEW `cantidad_recetas` AS
    SELECT
        CONCAT(`c`.`nombre`, ' ', `c`.`apellido`) AS `Chef_autores`,
        COUNT(`r`.`nombre`) AS `Cantidad_creadas`
    FROM
        (`chefs` `c`
        JOIN `recetas` `r` ON ((`c`.`id` = `r`.`id_chef_inventor`)))
    GROUP BY `c`.`id`

-- Select de la vista
SELECT * FROM Recetas.cantidad_recetas;

-- Delete en la vista
DELETE FROM Recetas.cantidad_recetas where chefs.id =1;

-- Eliminacion de la vista
DROP VIEW Recetas.cantidad_recetas;
