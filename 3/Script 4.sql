USE prueba;

DELIMITER //
CREATE TRIGGER borrado AFTER DELETE ON blog FOR EACH ROW
BEGIN
DELETE FROM notificacion WHERE id_blog IS NULL;
END//
DELIMITER ;