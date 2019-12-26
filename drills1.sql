-- 1.How many records are in the vehicles table? Provide the query you’d use to determine this as well as the answer to the question.
SELECT COUNT(*)
FROM vehicles; 
-- There are 33442 records 

-- 2.Write a query that returns all the records in the vehicles table. 
SELECT * 
FROM vehicles;

--3 Write a query that returns the id, make, and model fields for all the records for 2010 vehicles. 
SELECT id,make,model
FROM vehicles 
WHERE year = 2010;

-- Write a query that returns the count of vehicles from 2010. 
SELECT COUNT(*) 
FROM vehicles 
Where year = 2010;
-- There are 1109 vehicles in 2010 

SELECT COUNT(*)
FROM vehicles 
WHERE year BETWEEN 2010 AND 2015;

--The answer is 5995 cars 

--6.Write a query that returns the count of vehicles from the years 1990,2000,and 2010 
SELECT COUNT(*)
FROM vehicles 
WHERE year IN(1990, 2000, 2010);
--there are 3026 cars 

--7
SELECT COUNT(*)
FROM vehicles 
WHERE year BETWEEN 1987 AND 2005 
AND year NOT IN (1990,2000);
-- The answere is 17,325 cars 

--8
SELECT year, make, model, (hwy + cty)/ 2 AS average_mpg 
FROM vehicles;

--9 
SELECT year,make,model, CONCAT(hwy, ' highway;', cty, ' city;') AS mpg_info
FROM vehicles;

--10 
SELECT id,make,model,year 
FROM vehicles 
WHERE cyl is NULL 
OR displ is NULL;

--11 
SELECT * 
FROM vehicles
WHERE
    drive = 'Rear-Wheel Drive'
    AND fuel = 'Diesel'
    AND year >= 2000
ORDER BY year DESC, hwy DESC;

--12
SELECT COUNT(*) 
FROM vehicles
WHERE
    make IN ('Ford', 'Chevrolet')
    AND class IN ('Compact Cars', 'Two Seaters');
	
-- 612 cars 

--13 
SELECT *
FROM vehicles
ORDER BY hwy DESC
LIMIT 10;

--14
SELECT *
FROM vehicles
WHERE model LIKE 'X%'
AND year >=2000
ORDER BY make;

SELECT *
FROM vehicles
WHERE model LIKE 'x%'
AND year >=2000
ORDER BY make;

--15
SELECT COUNT(*)
FROM vehicles
WHERE cyl IS NULL;

--58 vehicles 

--16
SELECT COUNT(*)
FROM vehicles
WHERE
    year < 2000
    AND hwy > 20
    AND displ > 3;
	
--17
SELECT *
FROM vehicles
WHERE model LIKE '__X%';
