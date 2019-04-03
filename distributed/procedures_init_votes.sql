
DROP PROCEDURE if exists load_postulants ;
DELIMITER &
CREATE PROCEDURE load_postulants()
BEGIN
  DECLARE i INT;
  SET i = 1;
  DROP TEMPORARY TABLE IF EXISTS global_galardon;
  WHILE i <= (SELECT max(Galardon) FROM galardonado) DO 
    CREATE TEMPORARY TABLE global_galardon
        SELECT * from galardonado 
            WHERE Galardon = i ;
    CALL fill_voting_room();
    DROP TEMPORARY TABLE global_galardon;
    SET i = i + 1;
  END WHILE;
  END &
DELIMITER ;

DROP PROCEDURE if exists fill_voting_room;
DELIMITER &
CREATE PROCEDURE fill_voting_room()
BEGIN
  DECLARE room INT;
  INSERT INTO see.sala_votacion(se_puede_votar, email_creador, numero) 
      SELECT 1, Email, Galardon FROM global_galardon LIMIT 1;
  SET room = (SELECT max(numero) FROM see.sala_votacion);
  INSERT INTO see.postulante(post_email, sala_num) 
      SELECT Email, room FROM global_galardon;
  END &
DELIMITER ;

DROP PROCEDURE if exists load_galardonados_as_voters;
DELIMITER &
CREATE PROCEDURE load_galardonados_as_voters()
BEGIN
    INSERT INTO see.votante(email, nombre, localidad, passwd)
        SELECT Email, concat(Nombre, " ", Paterno, " ", Materno), Unidad_Academica, "root"
            FROM galardonado;
END &
DELIMITER ;


DROP PROCEDURE IF EXISTS random_votes;
DELIMITER &
CREATE PROCEDURE random_votes()
BEGIN
  DECLARE i INT DEFAULT (SELECT min(numero) FROM see.sala_votacion);
  DECLARE j INT;
  DECLARE rooms_count INT DEFAULT (SELECT max(numero) FROM see.sala_votacion);
  DECLARE postulant_count INT ;
  DECLARE voter, random_postulant VARCHAR(32);
  DECLARE upper_limit INT;
  WHILE i <= rooms_count DO 
    SET postulant_count = (SELECT count(*) FROM see.postulante WHERE sala_num = i);
    SET j = 1;
    WHILE j <= postulant_count DO
      SET voter = (SELECT post_email 
          FROM see.postulante WHERE sala_num = i LIMIT j, 1);
      SET upper_limit = random_int_inclusive(1, postulant_count) - 1;
      SET random_postulant = (SELECT post_email 
          FROM see.postulante WHERE sala_num = i LIMIT upper_limit, 1);
      INSERT INTO see.medio_votacion(post_email, email, numero) 
          VALUES (random_postulant, voter, i);
      SET j = j + 1;
    END WHILE;
    SET i = i + 1;
  END WHILE;
  END &
DELIMITER ;
--CALL random_votes;

DROP FUNCTION IF EXISTS random_int_inclusive ;
DELIMITER &
CREATE FUNCTION random_int_inclusive(a INT, b INT) 
RETURNS INT 
DETERMINISTIC
BEGIN 
  RETURN floor(rand() * (b - a + 1)) + a;
  END &
DELIMITER ;

DROP PROCEDURE IF EXISTS unique_email;
DELIMITER &
CREATE PROCEDURE unique_email()
BEGIN
  UPDATE galardonado MODIFY Email = concat(RFC, '@hotmail.com') ;
END &
DELIMITER ;

CALL load_galardonados_as_voters;
CALL unique_email;
CALL load_postulants;
