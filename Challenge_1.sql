
-- 1. Calculate What % of global sales were made in north america
SELECT ROUND(SUM(NA_Sales) / SUM(Total_Sales),4) * 100
FROM games;

-- 2. Extract a view of the console game titles ordered by platform name in Ascending order and year of release in descending
-- order
SELECT Name
FROM games
ORDER BY Platform, year DESC;

-- 3. For each game title extract the first four letters of the publisher's name
SELECT Name, SUBSTR(Publisher,1,4)
FROM games;

-- 4. Display all console Platforms which were released either just before black friday or just before christmas(in any year)
SELECT *
FROM games_date
WHERE (DATE_FORMAT(FirstRetailAvailability, '%m-%d') < '11-23' AND DAYOFWEEK(FirstRetailAvailability) = 6)
OR DATE_FORMAT(FirstRetailAvailability, '%m-%d') <'12-24';

-- 5. Order the Platform by their longetivity in ascending order (i.e., the platform which was available for the longest at 
-- the bottom.
SELECT DISTINCT Platform
FROM games
ORDER BY length(Platform);

-- 6. Demonstrate how to deal with Game_Year Column if the client wants to convert it to a different datatype?
ALTER TABLE games 
MODIFY Year INT;

-- 7. Provide Recommendations How to deal with missing values

# we can handle NULL values in SQL queries using various techniques. For example, we can use the IS NULL and IS NOT NULL 
# operators to filter rows based on the presence or absence of NULL values. Additionally, you can use functions like
# COALESCE or ISNULL to substitute NULL values with a specified default value.

# FILTERING using WHERE Clause
SELECT *
FROM games_date
WHERE Discontinued IS NULL;

# USING IFNULL() COALESCE() 
SELECT IFNULL(Discontinued, 0) AS value
FROM games_date;

SELECT *
FROM games_date;

UPDATE games_date
SET Discontinued = IFNULL(Discontinued, 0);













