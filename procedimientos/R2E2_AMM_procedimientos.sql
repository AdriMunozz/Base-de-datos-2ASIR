/*Escribe un procedimiento que diga si hay o no pedidos cancelados.*/

DROP PROCEDURE IF EXISTS cancelados;
DELIMITER //
CREATE PROCEDURE cancelados()
BEGIN
	SELECT * FROM pedidos
    WHERE estado = 'Cancelado';
END //
DELIMITER ;