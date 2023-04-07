SELECT region, SUM(population) as sum_populatiob
FROM cities
GROUP BY region;

SELECT region, SUM(population) as sum_populatiob
FROM cities
GROUP BY region
HAVING COUNT(name) >= 10;

SELECT region, name, population
FROM cities
WHERE region IN (SELECT uuid
                  FROM regions
                  WHERE area_quantity >= 5)
ORDER BY population DESC
LIMIT 5 OFFSET 10

SELECT region, SUM(population)
FROM cities
WHERE name IN (SELECT name
                FROM cities
                WHERE population >= 300000)
GROUP BY region;

SELECT name, population
FROM cities
WHERE region IN (SELECT uuid
                  FROM regions
                  WHERE area_quantity <= 5)
      AND name IN (SELECT name
                    FROM cities
                    WHERE population >= 150000 AND population <= 500000);

