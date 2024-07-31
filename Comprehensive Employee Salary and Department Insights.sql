-- Rank Employees by Salary Within Each Department
-- Write a query to list employees in each department, showing their names, salaries, and their rank based on 
-- salary within their respective departments. Ensure that the highest salary gets rank 1.

SELECT  e.name, e.salary,d.department_name , 
		DENSE_RANK() OVER(PARTITION BY d.department_name ORDER BY e.salary DESC ) AS rank
FROM employee e
JOIN department d ON e.department_id = d.department_id;


-- Find Departments with Average Salary Above a Certain Threshold
-- Write a query to identify departments where the average salary of employees exceeds a specified threshold (e.g., 50,000). 
-- Include the department name and the average salary.

SELECT name, avg(salary) AS Average_salary, d.department_name
FROM employee e
JOIN department d on e.department_id = d.department_id
GROUP BY name, d.department_name
HAVING avg(salary) > 50000;

-- List Departments with More Than a Specified Number of Employees
-- Write a query to find departments that have more than a certain number of employees (e.g., 10).
-- Show the department name and the number of employees in each qualifying department.

SELECT COUNT(*), d.department_name
FROM employee e
JOIN department d ON e.department_id = d.department_id
GROUP BY 2;

-- Employees Who Earn More Than the Average Salary in Their Department
-- Write a query to find employees who earn more than the average salary of their respective departments. 
-- Include the employee's name, salary, and department name.
WITH cte AS (
	SELECT *, ROUND(AVG(e.salary) OVER(PARTITION BY d.department_name ), 2) as avg_salary_by_department
	FROM employee e
	JOIN department d ON e.department_id = d.department_id
	)
SELECT name, salary, department_name, avg_salary_by_department
FROM cte
WHERE salary > avg_salary_by_department;

-- Department with the Highest Average Salary and the Number of Employees
-- Write a query to determine which department has the highest average salary and also show the number of employees in that department.
-- Include the department name, average salary, and the employee count.

WITH cte AS
	(
	SELECT *, 
		   AVG(e.salary) OVER(PARTITION BY d.department_name) AS avg_salary_by_department
	FROM employee e
	JOIN department d ON e.department_id = d.department_id
	),
	cte2 AS(
	SELECT department_name, avg_salary_by_department, COUNT(*) AS employee_count
	FROM cte
	GROUP BY 1,2)

SELECT * FROM cte2
ORDER BY avg_salary_by_department DESC
LIMIT 1;