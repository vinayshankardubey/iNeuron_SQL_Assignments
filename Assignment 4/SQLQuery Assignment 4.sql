use ineuSqlAssigments

-- Q-1. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.

SELECT REPLACE(first_name, 'a', 'A')
FROM worker


-- Q-2. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.

SELECT * 
FROM worker 
ORDER BY trim(DEPARTMENT) DESC, Trim(first_name)



-- Q-3. Write an SQL query to fetch the names of workers who earn the highest salary.
SELECT Top 1 CONCAT(first_name,' ',last_name) as Name
FROM worker 
Order By Salary