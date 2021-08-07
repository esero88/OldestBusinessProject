-- Start investigating with finding oldest business and newest one. (1)

SELECT 
MIN(year_founded) AS oldest, MAX(year_founded) AS newest
FROM OldestBusinessProject..businesses;


-- Let's find out how many businesses have been founded before the year 1000. (2)

SELECT
COUNT(business) AS business_count
FROM OldestBusinessProject..businesses
WHERE year_founded < 1000;

-- Information retrieved from six businesses which are founded before the year 1000. (3)

SELECT *
FROM OldestBusinessProject..businesses
WHERE year_founded < 1000
ORDER BY year_founded;

-- INNER JOIN category and business table (4)

SELECT b.business, b.year_founded, b.country_code, c.category
FROM OldestBusinessProject..businesses b 
INNER JOIN OldestBusinessProject..categories c 
ON b.category_code = c.category_code
WHERE year_founded < 1000
ORDER BY year_founded;

-- Where are those oldest businesses (5)

SELECT MIN(b.year_founded) AS oldest, c.continent
FROM OldestBusinessProject..businesses b 
INNER JOIN OldestBusinessProject..countries c
ON b.country_code = c.country_code
GROUP BY c.continent
ORDER BY oldest;

-- INNER JOIN all three tables for further investigations (6)

SELECT
b.business,
b.year_founded,
c1.category,
c2.continent
FROM OldestBusinessProject..businesses b 
	INNER JOIN OldestBusinessProject..categories c1
		ON b.category_code = c1.category_code
	INNER JOIN OldestBusinessProject..countries c2
		ON b.country_code = c2.country_code
ORDER BY b.year_founded

-- Lets GROUP by above query with continent and category AND count the businesses (7)

SELECT TOP 10
c1.category,
c2.continent,
COUNT(b.business) AS n
FROM OldestBusinessProject..businesses b 
	INNER JOIN OldestBusinessProject..categories c1
		ON b.category_code = c1.category_code
	INNER JOIN OldestBusinessProject..countries c2
		ON b.country_code = c2.country_code
GROUP BY c2.continent, c1.category
ORDER BY n DESC;

-- Companies in Turkey (*)

SELECT b.business, b.year_founded, b.category_code, c.category
FROM OldestBusinessProject..businesses b 
INNER JOIN OldestBusinessProject..categories c 
ON b.category_code = c.category_code
WHERE b.country_code = 'TUR'
ORDER BY year_founded;

-- Which industry is more common (8)

SELECT c.category, COUNT(c.category) AS n
FROM OldestBusinessProject..categories c
INNER JOIN OldestBusinessProject..businesses b
ON c.category_code = b.category_code
GROUP BY c.category
ORDER BY n DESC;


