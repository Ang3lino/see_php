
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

DROP PROCEDURE IF EXISTS did_vote;
DELIMITER &
CREATE PROCEDURE did_vote (
    IN p_email VARCHAR(32),
    IN p_n INT
) BEGIN 
	SELECT 
        count(*) as done 
    FROM votante v
        JOIN medio_votacion m ON v.email = m.email 
        JOIN sala_votacion s ON m.numero = s.numero 
    WHERE v.email = p_email 
        AND s.numero = p_n ;
    END &
DELIMITER ;

-- CALL did_vote("SALR400622@hotmail.com", 3);
-- CALL did_vote("PETS750209@hotmail.com", 4);

-- SELECT CHARACTER_MAXIMUM_LENGTH 
--             FROM information_schema.columns 
--             WHERE TABLE_NAME = 'votante' 
--                 AND COLUMN_NAME = 'email'

-- CALL get_candidates(1);
-- CALL get_candidates(4);

-- see's procedure
DELIMITER &
DROP PROCEDURE IF EXISTS get_votes_count;
CREATE PROCEDURE get_votes_count(IN i INT)
BEGIN 
  SELECT v.email, v.nombre, count(*) AS votes_count
    FROM see.medio_votacion m 
      INNER JOIN see.votante v ON m.post_email = v.email 
    WHERE m.numero = i
    GROUP BY post_email
    ORDER BY votes_count DESC
  ;
  END &
DELIMITER ;

-- CALL get_votes_count(8);

-- UPDATE votante 
--     SET nombre = 'Sonia Mayra Perez Tapia'
--     WHERE email = 'PETS750209@hotmail.com';

-- UPDATE votante 
--     SET nombre = 'Sonia Mayra Pérez Tapia'
--     WHERE email = 'PETS750209@hotmail.com';

-- SELECT CHARACTER_MAXIMUM_LENGTH FROM information_schema.columns WHERE TABLE_NAME = 'medio_votacion' AND COLUMN_NAME = 'email';
