USE prueba;

DELIMITER //
CREATE PROCEDURE insercion()
BEGIN
IF (SELECT COUNT(*) FROM blog)
THEN INSERT INTO notificacion(id_blog,fecha,notificacion) VALUES (last_insert_id(), curdate(),"Se ha generado una nueva entrada");
END IF;
END//
DELIMITER ;
