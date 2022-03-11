CREATE DATABASE Prueba;

USE Prueba;

CREATE TABLE Datos_Personas(
	Codigo int PRIMARY KEY, 
    Apellido varchar(30), 
    Nombre varchar(30), 
    Fecha_de_Nacimiento date, 
    Edad int);

DESCRIBE Datos_Personas;

SHOW TABLES;