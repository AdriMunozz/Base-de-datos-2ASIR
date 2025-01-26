/*Crea un procedimiento que muestre cuantos pedidos se han hecho en una fecha que recibe como
parámetro. Si no existe ninguno debe mostrar “No hay pedidos en esa fecha”.*/

DROP PROCEDURE IF EXISTS hay_pedidos;

DELIMITER //
CREATE PROCEDURE hay_pedidos(IN fechaPedido DATE)
BEGIN 
	DECLARE cantidad INT;
    
	SELECT COUNT(*) INTO cantidad FROM pedidos
    WHERE fechaPedido = fechaPedido;
    IF cantidad > 0 THEN
    	SELECT CONCAT ('Hay', ' ', cantidad, ' ', 'pedidos en esa fecha');
    ELSE
    	SELECT ('No hay ningun pedido en esa fecha');
    END IF;
END //
DELIMITER ;

CALL hay_pedidos('2019-01-10');