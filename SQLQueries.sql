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

-- Companies in Turkey (5)

SELECT b.business, b.year_founded, b.category_code, c.category
FROM OldestBusinessProject..businesses b 
INNER JOIN OldestBusinessProject..categories c 
ON b.category_code = c.category_code
WHERE b.country_code = 'TUR'
ORDER BY year_founded;

-- Which industry is more common (6)

SELECT c.category, COUNT(c.category) AS n
FROM OldestBusinessProject..categories c
INNER JOIN OldestBusinessProject..businesses b
ON c.category_code = b.category_code
GROUP BY c.category
ORDER BY n DESC;
