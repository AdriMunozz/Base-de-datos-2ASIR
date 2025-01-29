/*Escribe una funcion que diga si hay o no pedidos cancelados*/
DELIMITER ::

/* Borrar la función*/
DROP FUNCTION IF EXISTS hay_pedidos;

/* Crear la función*/
CREATE FUNCTION hay_pedidos()
RETURNS CHAR(50) DETERMINISTIC
BEGIN
	DECLARE resultado INT; 
	SELECT COUNT(*) INTO resultado FROM pedidos
	WHERE estado = 'Cancelado';
	
	IF resultado = 0 THEN 
		RETURN "No hay pedidos cancelados";
	ELSE
		RETURN "Hay pedidos cancelados";
	END IF;
END ::
DELIMITER ; 