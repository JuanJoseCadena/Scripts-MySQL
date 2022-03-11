USE prueba;

INSERT INTO blog(fecha, autor, titulo, contenido) VALUES (curdate(),"Juan Cadena","MySQL Workbench","Versión 8.0");
CALL insercion();

INSERT INTO blog(fecha, autor, titulo, contenido) VALUES (curdate(),"José Arroyo","Sentencia SQL","ALTER TABLE");
CALL insercion();

INSERT INTO blog(fecha, autor, titulo, contenido) VALUES (curdate(),"Fabián Ruiz","Universidad Manuela Beltrán","Sitio Web");
CALL insercion();

SELECT * FROM notificacion;
SELECT * FROM blog;
