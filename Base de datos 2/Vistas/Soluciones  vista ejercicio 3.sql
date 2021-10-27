-- 1.	Eliminar la operación con id 9 desde la vista alquileres_de_casas. ¿Se puede? ¿Por qué?
DELETE FROM alquileres_de_casas WHERE id=9;
-- Error Code 1395 : Can not delete from join view 'inmobiliaria.alquileres_de_casas'
-- No se puede: Para hacer DELETE, la vista debe tener una sola tabla base.
-- 2.	Eliminar la vista alquileres_de_casas (guardar el código en algún archivo antes). ¿Se perderán datos? ¿Por qué?
DROP VIEW alquileres_de_casas;
-- No se perderán datos, porque la vista no tiene datos propios, por lo que los
-- datos de la tabla original no han sido afectados.
-- 3.	Eliminar desde la vista  resumen_vendedores a la vendedora que no tiene ninguna operación. ¿Se puede? ¿Por qué?
DELETE FROM resumen_vendedores WHERE apellido="Pinelli";
-- Error Code 1288 : The target table resumen_vendedores of the DELETE is not updatable
-- No se puede, porque la vista no es actualizable y además involucra más de una tabla base
-- 4.	Insertar un nuevo vendedor desde la vista resumen_vendedores. ¿Se puede? ¿Por qué?
INSERT INTO resumen_vendedores ( nombre, apellido) VALUES ("Juana", "Perez");
-- No se puede, la vista no es actulizable porque contiene una función de agregación
-- Error Code: 1471. The target table resumen_vendedores of the INSERT is not insertable-into