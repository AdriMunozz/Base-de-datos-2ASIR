/*Crea un procedimiento que recibe como parámetro un año y cuenta los pedidos de ese año.
Después mostrará devolverá en un parámetro de salida los siguientes mensajes según corresponda:
“Menos de 100 pedidos”
“Entre 100 y 150 pedidos”
“Más de 150 pedidos”*/

DROP PROCEDURE IF EXISTS pedidos_anio;

DELIMITER //
CREATE PROCEDURE pedidos_anio(IN fecha YEAR)
BEGIN
	DECLARE numero INT;
    SELECT COUNT(numeroPedido) INTO numero 
    FROM pedidos
    WHERE YEAR(fechaPedido) = fecha ;
    IF numero < 100 THEN
    	SELECT 'Menos de 100 pedidos';
    ELSEIF numero >= 100 AND numero <= 150 THEN
    	SELECT 'ENTRE 100 Y 150 pedidos';
    ELSE
    	SELECT 'Mas de 150 pedidos';
	END IF;
END //
DELIMITER ;
CALL pedidos_anio(2019);