-- 1
 SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s
ON s.emp_no = e.emp_no;

--2
SELECT emp_no, first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN '1986-01-01'AND '1986-12-31';

--3
SELECT d_m.dept_no, d.dept_name, d_m.emp_no, e.last_name, e.first_name
FROM dept_manager AS d_m
INNER JOIN departments AS d
ON d_m.dept_no= d.dept_no
INNER JOIN employees AS e
ON d_m.emp_no = e.emp_no;

--4
SELECT e.emp_no, e.last_name, e.first_name,d.dept_name
FROM employees AS e
LEFT JOIN dept_emp AS d_e
ON e.emp_no = d_e.emp_no
INNER JOIN departments AS d
ON d_e.dept_no = d.dept_no;

--5
SELECT last_name, first_name, sex
FROM employees
WHERE (first_name = 'Hercules') AND (LOWER(last_name) LIKE 'b%');

--6
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS d_e
ON e.emp_no = d_e.emp_no
INNER JOIN departments AS d
ON d_e.dept_no = d.dept_no
WHERE LOWER(d.dept_name) = 'sales';

--7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS d_e
ON e.emp_no = d_e.emp_no
INNER JOIN departments AS d
ON d_e.dept_no = d.dept_no
WHERE (LOWER(d.dept_name) = 'sales') OR (LOWER(d.dept_name) = 'development');

--8
SELECT last_name, COUNT(last_name) AS Frequency 
FROM employees 
GROUP BY last_name
ORDER BY frequency DESC;