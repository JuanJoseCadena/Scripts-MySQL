CREATE DATABASE dbs;

USE dbs;

CREATE TABLE country(norme_item_factor int PRIMARY KEY AUTO_INCREMENT, country_name varchar(30), country_description varchar(200), creation_date date, country_status varchar(20));

CREATE INDEX country_by_desc ON country(country_description);
CREATE INDEX country_by_ds ON country(creation_date, country_status);

INSERT INTO country(country_name, country_description, creation_date, country_status) 
VALUES ("Colombia", "País sudamericano", "2000-12-26", "Activo");
INSERT INTO country(country_name, country_description, creation_date, country_status) 
VALUES ("Portugal", "País europeo", "1990-10-16", "Activo");
INSERT INTO country(country_name, country_description, creation_date, country_status) 
VALUES ("Yugoslavia", "País europeo", "2005-08-13", "Desaparecido");
INSERT INTO country(country_name, country_description, creation_date, country_status) 
VALUES ("Serbia", "País europeo", curdate(), "Activo");
INSERT INTO country(country_name, country_description, creation_date, country_status) 
VALUES ("Uruguay", "País sudamericano", curdate(), "Activo");
INSERT INTO country(country_name, country_description, creation_date, country_status) 
VALUES ("Checoslovaquia", "País europeo", "2009-08-22", "Desaparecido");
INSERT INTO country(country_name, country_description, creation_date, country_status) 
VALUES ("Bolivia", "País sudamericano", curdate(), "Activo");
INSERT INTO country(country_name, country_description, creation_date, country_status) 
VALUES ("Senegal", "País africano", "2020-02-19", "Activo");
INSERT INTO country(country_name, country_description, creation_date, country_status) 
VALUES ("Argentina", "País sudamericano", "1998-10-14", "Activo");
INSERT INTO country(country_name, country_description, creation_date, country_status) 
VALUES ("Alemania", "País europeo", curdate(), "Activo");
INSERT INTO country(country_name, country_description, creation_date, country_status) 
VALUES ("Malí", "País africano", "2005-05-13", "Activo");
INSERT INTO country(country_name, country_description, creation_date, country_status) 
VALUES ("Japón", "País asiático", "2018-11-14", "Activo");
INSERT INTO country(country_name, country_description, creation_date, country_status) 
VALUES ("España", "País europeo", "2019-12-16", "Activo");
INSERT INTO country(country_name, country_description, creation_date, country_status) 
VALUES ("Paraguay", "País sudamericano", "2019-12-16", "Activo");
INSERT INTO country(country_name, country_description, creation_date, country_status) 
VALUES ("Unión Soviética", "País europeo", curdate(), "Desaparecido");

SELECT * FROM country FORCE INDEX (country_by_desc)
WHERE country_description like 'País sudamericano'
ORDER BY country_description;

DELIMITER //

CREATE EVENT event_security
ON SCHEDULE AT current_timestamp()
DO
BEGIN
SELECT * FROM country
ORDER BY creation_date DESC; 
END//

DELIMITER ;

SELECT * FROM country
ORDER BY country_status ASC; 

EXPLAIN country;