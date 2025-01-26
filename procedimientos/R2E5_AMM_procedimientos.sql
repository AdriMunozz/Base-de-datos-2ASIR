/*Crea un procedimiento que recibe el nombre de una categoría y un número. El procedimiento
mostrará tantos productos de la categoría como indique el número. Por ejemplo si recibe la
categoría “pulseras” y el número 5, mostrará cinco productos de la categoría “pulseras”. El número
debe estar entre 1 y 10, de lo contrario no hará nada y mostrará el mensaje “El número no es
válido”.*/

DROP PROCEDURE IF EXISTS categoria_numero;


DELIMITER //
CREATE PROCEDURE categoria_numero(IN categoria VARCHAR(50), IN numero INT)
BEGIN
	IF numero < 1 or numero > 10 THEN
    SELECT 'El número no es válido'
    ELSE
    	

DELIMITER ;