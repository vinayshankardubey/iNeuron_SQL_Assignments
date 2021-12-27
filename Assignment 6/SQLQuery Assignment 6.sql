#SQL Assignment 6
use ineuSqlAssigments

SELECT * FROM WORKER

-- Q-1. Write an SQL query to print details of the Workers who have joined in Feb’2014.

---- First I am updating worker joining Date (Qurey is below)

SELECT *FROM worker WHERE CONVERT(varchar,joining_date) LIKE '2014-02%'

-- Q-2. Write an SQL query to fetch duplicate records having matching data in some fields of a table.

SELECT *
FROM (select first_name,count(*) as matching_fields
	from worker
	group by first_name,DEPARTMENT
	Having COUNT(*) > 1) AS v

-- Q-3. How to remove duplicate rows from Employees table.

SELECT first_name,last_name,Count(*) 
FROM worker
GROUP BY first_name,last_name
Having COUNT(*) > 1

DELETE FROM worker WHERE id NOT IN (SELECT MAX(id) FROM Worker GROUP BY first_name,last_name)

SELECt * FROM worker



-- updating worker joining Date




UPDATE worker SET joining_date = '2015-02-11' WHERE id IN (2,6,7,10)

INSERT INTO worker VALUES ('ram','singh','IT',20000,'singh@gmail.com','2011-01-01')