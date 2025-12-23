-- Employees with salary above department average 
SELECT 
    e.emp_name,
    d.dept_name,
    s.salary
FROM employees e
JOIN salaries s ON e.emp_id = s.emp_id
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY e.emp_id, e.emp_name, d.dept_name, s.salary
HAVING s.salary > AVG(s.salary);

-- Q2 Department with highest total salary cost 
SELECT d.dept_name, SUM(s.salary) AS total_salary
FROM departments d
JOIN employees e ON d.dept_id = e.dept_id
JOIN salaries s ON e.emp_id = s.emp_id
GROUP BY d.dept_name
ORDER BY total_salary DESC
LIMIT 1;

-- Q3 Employees without attendance records  
SELECT e.emp_name
FROM employees e
LEFT JOIN attendance a ON e.emp_id = a.emp_id
WHERE a.emp_id IS NULL;

-- Q4 Average salary per department 
SELECT d.dept_name, AVG(s.salary) AS avg_salary
FROM departments d
JOIN employees e ON d.dept_id = e.dept_id
JOIN salaries s ON e.emp_id = s.emp_id
GROUP BY d.dept_name;

-- Q5 Employees hired after 2022 
SELECT emp_name, hire_date
FROM employees
WHERE hire_date > '2022-01-01';
