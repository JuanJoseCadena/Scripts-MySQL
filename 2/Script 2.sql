USE dbs;

CREATE INDEX id_search ON country(norme_item_factor);

SELECT country_description FROM country
WHERE norme_item_factor BETWEEN 10 and 1000;

SELECT creation_date, country_description FROM country
ORDER BY creation_date; 

SELECT creation_date, country_description FROM country
ORDER BY country_description;