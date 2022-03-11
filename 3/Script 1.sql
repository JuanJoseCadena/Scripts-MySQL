CREATE DATABASE prueba;

USE prueba;

CREATE TABLE blog(id_blog int PRIMARY KEY AUTO_INCREMENT, 
fecha date, 
autor varchar(50), 
titulo varchar(100), 
contenido varchar(250));


CREATE TABLE notificacion(id int PRIMARY KEY AUTO_INCREMENT, 
id_blog int, 
FOREIGN KEY(id_blog) REFERENCES blog(id_blog) ON UPDATE CASCADE ON DELETE SET NULL, 
fecha date, 
notificacion varchar(200));
