/*Crea una funcion que recibe como parámetro un año y cuenta los pedidos de ese año.
Después mostrará devolverá en un parámetro de salida los siguientes mensajes según corresponda:
“Menos de 100 pedidos”
“Entre 100 y 150 pedidos”
“Más de 150 pedidos”*/

/*Borrar la funcion en el caso de que exista*/
DROP FUNCTION IF EXISTS cuenta_pedidos;

/*Crear la función*/
DELIMITER ::
CREATE FUNCTION cuenta_pedidos(fecha_consulta DATE)
RETURNS CHAR(50) DETERMINISTIC
BEGIN
	DECLARE resultado INT;
	SELECT COUNT(*) INTO resultado
	FROM pedidos WHERE fechaPedido = fecha_consulta;
	
	IF resultado < 100 THEN
		RETURN "Menos de 100 pedidos";
	ELSEIF resultado >= 100 <= 150 THEN
		RETURN "Entre 100 y 150 pedidos";
	ELSE
		RETURN "Más de 150 pedidos";
	END IF;
END ::
DELIMITER ; 