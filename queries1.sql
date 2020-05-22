/**
 * Project: World Populations
 * Author: Daniel Xiang
 * Version: 0.0.0
 * Since: 2020-05-22
 */

-- Dialect: SQLite

-- What years are covered by the dataset?
SELECT DISTINCT "year" FROM Population_Years;
-- Result: 2000 - 2010

-- What is the largest population size for Gabon in this dataset?
SELECT MAX(population) FROM Population_Years
WHERE country = 'Gabon';
-- Result: 1.54526

-- What were the 10 lowest population countries in 2005?
SELECT country, population 
FROM Population_Years
WHERE "year" = 2005 AND population IS NOT NULL
ORDER BY 2 LIMIT 10;
-- Result: Niue, Falkland Islands, Montserrat, Saint Pierre and Miquelon, Saint Helena, Nauru, Cook Islands, Turks and Caicos Islands, Virgin Islands, British, Gibraltar

-- What are all the distinct countries with a population of over 100 million in the year 2010?
SELECT country, population 
FROM Population_Years
WHERE "year" = 2010 AND population > 100;
-- Result: Mexico, United States, Brazil, Russia, Nigeria, Bangladesh, China, India, Indonesia, Japan, Pakistan

-- How many countries in this dataset have the word “Islands” in their name?
SELECT COUNT(*) 
FROM Population_Years 
WHERE country LIKE '%Islands%';
-- Result: 99

-- What is the difference in population between 2000 and 2010 in Indonesia?
SELECT * FROM Population_Years 
WHERE country = 'Indonesia'
    AND ("year" = 2000 OR "year" = 2010);
-- Result: 242.96834 - 214.67661 = 28.29173
