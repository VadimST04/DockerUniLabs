SELECT UPPER(name)
FROM cities
ORDER BY name
LIMIT 5 OFFSET 5;

SELECT name, CHAR_LENGTH(name) AS length
FROM cities
WHERE LENGTH(name) NOT IN (8, 9, 10);

SELECT SUM(population) AS 'sum of population in C and S'
FROM cities
WHERE region in ('C', 'S');

SELECT region, ROUND(AVG(population), 0) AS avarage_population
FROM cities
WHERE region = 'W';

SELECT region, COUNT(name) AS 'count of names in region'
FROM cities
WHERE region = 'E';