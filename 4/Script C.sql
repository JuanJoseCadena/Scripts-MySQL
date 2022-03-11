USE prueba;

REVOKE ALTER, CREATE, DELETE, DROP, INSERT, UPDATE, GRANT OPTION ON prueba.* FROM 'administrador'@'localhost';

REVOKE INSERT, DELETE, UPDATE ON prueba.ejemplo FROM 'consulta_ejemplo'@'localhost';

REVOKE ALL PRIVILEGES ON prueba.* FROM 'gerente'@'%';

RENAME USER 'gerente'@'%' TO 'asesor'@'%';

SET PASSWORD FOR 'asesor'@'%' ='sdrdpt468';
FLUSH PRIVILEGES;

DROP USER 'asesor'@'%';
