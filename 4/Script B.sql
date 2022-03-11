CREATE DATABASE prueba;
USE prueba;

CREATE TABLE ejemplo (id INT PRIMARY KEY, nombre varchar(30), apellido varchar(30));

CREATE USER 'administrador'@'localhost' IDENTIFIED BY 'hsyoyp283';
GRANT ALL PRIVILEGES ON prueba.* TO 'administrador'@'localhost';

CREATE USER 'gerente'@'%' IDENTIFIED BY 'sbrdytix512';
GRANT ALL PRIVILEGES ON prueba.* TO 'gerente'@'%';

CREATE USER 'consulta'@'%' IDENTIFIED BY 'vpmdiñys893';
GRANT SELECT ON prueba.* TO 'consulta'@'%';

CREATE USER 'consulta_ejemplo'@'localhost' IDENTIFIED BY 'whwnoki633';
GRANT SELECT, INSERT, DELETE, UPDATE ON prueba.ejemplo TO 'consulta_ejemplo'@'localhost';
FLUSH PRIVILEGES;