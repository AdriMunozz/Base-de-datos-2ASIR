/*Crea un procedimiento que modifique la tabla pedidos para añadirle un atributo llamado “importe”.
Debe darle el valor de la suma de los importes de las lineas de pedido que le correspondan.*/

/*ALTER TABLE pedidos ADD COLUMN importe DECIMAL (10,2);*/


DROP PROCEDURE IF EXISTS importe;
DELIMITER //
CREATE PROCEDURE importe()
BEGIN
	UPDATE pedidos
    SET importe = (
		SELECT SUM(importe) FROM lineapedido
        WHERE lineapedido.numeroPedido = pedidos.numeroPedido
        );
END //
DELIMITER ;