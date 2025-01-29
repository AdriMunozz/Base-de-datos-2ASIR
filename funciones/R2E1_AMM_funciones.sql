/*Crea una funcion que modifique la tabla pedidos para añadirle un atributo llamado “importe”.
Debe darle el valor de la suma de los importes de las lineas de pedido que le correspondan*/

/* Borrar la función en el caso de que exista*/
DROP FUNCTION IF EXISTS anadir_importe;

/*Añadir la columna importe a la tabla pedidos*/
/*ALTER TABLE pedidos ADD COLUMN importe DECIMAL(10,2);*/

/*Creación de la función*/
DELIMITER ::
CREATE FUNCTION anadir_importe()
RETURNS CHAR(10) DETERMINISTIC
BEGIN
	DECLARE importe DECIMAL(10,2);
	UPDATE pedidos
	SET importe = (
		SELECT SUM(importe) FROM lineapedido
		WHERE lineapedido.numeroPedido = pedidos.numeroPedido
	);


	RETURN "OK";
END ::
DELIMITER ;