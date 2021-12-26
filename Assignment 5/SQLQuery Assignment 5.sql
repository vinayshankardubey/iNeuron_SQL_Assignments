use ineuSqlAssigments

-- Q-1. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.

#I am using ram as Vipul And shiv as Satsh

SELECT *
FROM worker
WHERE worker.first_name != 'ram' And worker.first_name != 'shiv'


-- Q-2. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.


# I am using t as 
SELECT * 
FROM worker
WHERE first_name Like '______t'


-- Q-3. Write a query to validate Email of Employee.

SELECT *, CASE WHEN email LIKE '%@gmail.com' THEN 'TRUE'
			ELSE 'False'
			END as email_Validity
FROM worker





