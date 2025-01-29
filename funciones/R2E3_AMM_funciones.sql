/*Crea una funcion que muestre cuantos pedidos se han hecho en una fecha que recibe como
parámetro. Si no existe ninguno debe mostrar “No hay pedidos en esa fecha”.*/

/*Borrar la función en el caso de que exista*/
DROP FUNCTION IF EXISTS pedidos_fecha;

/*Crear la función*/
DELIMITER ::
CREATE FUNCTION pedidos_fecha(fecha_consulta DATE)
RETURNS CHAR(50) DETERMINISTIC
BEGIN
	DECLARE resultado INT;
	SELECT COUNT(*) INTO resultado 
	FROM pedidos WHERE fecha_consulta = fechaPedido;
	
	IF resultado = 0 THEN
		RETURN "No hay pedidos en esa fecha";
	ELSE
		RETURN "Hay pedidos en esa fecha";
	END IF;
	
END ::
DELIMITER ; 