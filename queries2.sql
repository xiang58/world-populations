/**
 * Project: World Populations
 * Author: Daniel Xiang
 * Version: 0.0.0
 * Since: 2020-05-22
 */

-- Dialect: SQLite

-- How many entries in the database are from Africa?
SELECT COUNT(*) FROM Countries
WHERE continent = 'Africa';
-- Result: 56

-- What was the total population of Oceania in 2005?
SELECT SUM(population) 
FROM Countries AS c
JOIN Population_Years
ON c.id = country_id
WHERE continent = 'Oceania'
	AND "year" = 2005;
-- Result: 32.66417

-- What is the average population of countries in South America in 2003?
SELECT ROUND(AVG(population), 3)
FROM Countries AS c
JOIN Population_Years
ON c.id = country_id
WHERE continent = 'South America' AND "year" = 2003 
    AND population IS NOT NULL;
-- Result: 25.891 

-- What country had the smallest population in 2007?
SELECT name, MIN(population)
FROM Countries AS c
JOIN Population_Years
ON c.id = country_id
WHERE continent = 'South America' AND "year" = 2007
    AND population IS NOT NULL;
-- Result: 0.00297

-- What is the average population of Poland during the time period covered by this dataset?
SELECT ROUND(AVG(population), 3) 
	AS poland_avg_population
FROM Countries AS c
JOIN Population_Years
ON c.id = country_id
WHERE name = 'Poland' AND population IS NOT NULL;
-- Result: 38.561

-- How many countries have the word "The" in their name?
SELECT COUNT(*) FROM Countries
WHERE name LIKE '%The%';
-- Result: 4

-- What was the total population of each continent in 2010?
SELECT continent, 
	ROUND(SUM(population), 2) AS total_population
FROM Countries AS c
JOIN Population_Years ON c.id = country_id
WHERE "year" = 2010
GROUP BY 1;
-- Result: Africa = 1015.48, Asia: 4133.09, Europe: 723.06, North America: 539.79, Oceania: 34.96, South America: 396.58
