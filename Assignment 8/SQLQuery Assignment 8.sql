

-- Q-15. Write an SQL query to fetch intersecting records of two tables.

SELECT * FROM EmployeeSalary
INTERSECT
SELECT * FROM ManagerSalary

-- Q-16. Write an SQL query to show records from one table that another table does not
-- have.

SELECT Name FROM worker1
MINUS
SELECT Name FROM worker 2
