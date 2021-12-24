use ineuSqlAssigments

SELECT * 
FROM worker

-- Q-1. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table. -->

SELECT SUBSTRING(first_name,1,3) AS first_name_3char
FROM worker

-- Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.-->

SELECT first_name,CHARINDEX('a',first_name,1) AS index_of_a
FROM worker


-- Q-3. Write an SQL query to print the name of employees having the highest salary in each department. -->

select first_name, DEPARTMENT,Salary
from (
     select first_name,DEPARTMENT, Salary,
            Row_Number() over(partition by DEPARTMENT order by Salary DESC) as ranking
     from worker
     ) as x
where ranking = 1 ORDER BY Salary DESC




-- Adding Alter Table Salary -->
ALTER TABLE worker
ADD Salary int

-- Add salary -->
UPDATE worker SET Salary = 28000 WHERE id = 4