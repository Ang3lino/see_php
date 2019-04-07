
USE see;
DROP PROCEDURE IF EXISTS get_candidates;
DELIMITER &
CREATE PROCEDURE get_candidates(
    IN n INT
) BEGIN 
    SELECT v.nombre, p.post_email
        FROM postulante p 
            JOIN votante v ON p.post_email = v.email 
            JOIN sala_votacion s ON p.sala_num = s.numero 
        WHERE s.numero = n 
        ORDER BY v.nombre
    ;
    END &
DELIMITER ;

CALL get_candidates(1);
CALL get_candidates(4);

UPDATE votante 
    SET nombre = 'Sonia Mayra Perez Tapia'
    WHERE email = 'PETS750209@hotmail.com';

UPDATE votante 
    SET nombre = 'Sonia Mayra Pérez Tapia'
    WHERE email = 'PETS750209@hotmail.com';

	$query = 'select v.nombre, p.post_email, p.partido ' .
				'from votante v, postulante p, sala_votacion s ' . 
				'where p.post_email = v.email ' .
				'	and p.sala_num = s.numero ' .
				'	and s.numero = ' . $n . ' ' .
				'order by v.nombre;' ; 

-- SELECT CHARACTER_MAXIMUM_LENGTH FROM information_schema.columns WHERE TABLE_NAME = 'medio_votacion' AND COLUMN_NAME = 'email';