use ineuSqlAssigments

-- Q-13. Write an SQL query to show only odd rows from a table.

WITH w_cte AS (SELECT *,ROW_NUMBER() OVER (Order By id) as rn FROM worker) 
SELECT * FROM w_cte
WHERE rn%2 != 0
 
-- Q-14. Write an SQL query to clone a new table from another table.

CREATE TABLE worker_clone AS SELECT * FROM worker