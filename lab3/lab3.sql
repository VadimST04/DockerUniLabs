SELECT name
FROM cities
WHERE name LIKE '%ськ';

SELECT name
FROM cities
WHERE name LIKE '%донец%';

SELECT Concat(name, ' (', region, ')'), population
FROM cities
WHERE population > 100000
ORDER BY name ASC;

SELECT name, population, Concat(ROUND(population / 40000000 * 100, 2), '%') AS percent
FROM cities
ORDER BY population DESC
LIMIT 50;

SELECT Concat(name, ' - ', ROUND(population / 40000000 * 100, 2), '%') AS percent
FROM cities
WHERE population / 40000000 * 100 >= 0.1
ORDER BY population DESC;
