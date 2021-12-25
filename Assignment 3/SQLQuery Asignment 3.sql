 use ineuSqlAssigments

 SELECT *
 FROM worker
 
 -- Q-1. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side. -->

 SELECT RTrim(First_name) AS First_Name_RTrimmed
 FROM worker

 -- Q-2. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length. -->

 SELECT COUNT(DISTINCT DEPARTMENT) AS Unique_Department_len
 FROM worker



-- Q-3. Write an SQL query to fetch nth max salaries from a table.

SELECT TOP 1 salary 
FROM ( SELECT DISTINCT TOP 5 salary FROM worker ORDER BY salary DESC) AS temp 
ORDER BY salary DESC

