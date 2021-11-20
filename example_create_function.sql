-- Creación de una función para calcular unidades en alquiler
CREATE OR REPLACE FUNCTION buscar_alquiler
	(codigo_producto videogames.game_rental.game_code%type) --necesito mencionar esquema.tabla.columna o poner integer
RETURNS integer AS $$
DECLARE 
	alquiler integer;
BEGIN
	SELECT COUNT(*) as total INTO alquiler --ojo al SELECT INTO
	FROM videogames.game_rental as v
	WHERE v.game_code = codigo_producto
	AND v.ret_date IS NULL
	GROUP BY game_code;
	RETURN alquiler; --return de alquiler
END;
$$LANGUAGE plpgsql;
	
--Ejecuto función
SELECT * FROM buscar_alquiler(5);