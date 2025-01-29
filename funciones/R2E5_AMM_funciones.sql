/*Crea una función que recibe el nombre de una categoría y un número. El procedimiento
mostrará tantos productos de la categoría como indique el número. Por ejemplo si recibe la
categoría “pulseras” y el número 5, mostrará cinco productos de la categoría “pulseras”. El número
debe estar entre 1 y 10, de lo contrario no hará nada y mostrará el mensaje “El número no es
válido”.*/

/*Borrar la función si existe*/
DROP FUNCTION IF EXISTS categoria_cantidad;

/*Crear la función*/
DELIMITER ::
CREATE FUNCTION categoria_cantidad(categoria_consult VARCHAR(15), numero INT)
RETURNS CHAR(250) DETERMINISTIC
BEGIN
	IF numero < 1 OR numero > 10 THEN
		RETURN "El número no es válido";
	ELSE
		SELECT * FROM productos 
		WHERE categoria = categoria_consult
		LIMIT numero; 
	END IF;
END::
DELIMITER ; 