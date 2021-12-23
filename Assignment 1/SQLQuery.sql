use ineuSqlAssigments

SELECT * FROM worker

SELECT first_name AS WORKER_NAME
FROM worker

ALTER TABLE worker
ADD DEPARTMENT  varchar(50);

UPDATE worker SET DEPARTMENT = 'Front Office' 
WHERE ID IN (4,6)

SELECT DISTINCT DEPARTMENT 
FROM worker


SELECT TOP 5 * 
FROM worker
ORDER BY ID DESC