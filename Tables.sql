Drop table employees;
Drop table titles;
Drop table salaries
Drop table dept_manager
Drop table departments
Drop table dept_emp 
--Create Employees table
CREATE TABLE employees(
		emp_no INT NOT NULL,
		emp_title_id VARCHAR(100) NOT NULL,
		birth_date DATE NOT NULL,
		first_name VARCHAR(100) NOT NULL,
		last_name VARCHAR(100) NOT NULL,
		sex VARCHAR(1) NOT NULL,
		hire_date DATE NOT NULL,
		PRIMARY KEY (emp_no),
		FOREIGN KEY (emp_title_id) references titles(title_id)
);

Select * from employees
		
-- Create titles table
Create Table titles(
		title_id VARCHAR(10) NOT NULL,
		title VARCHAR(100) NOT NULL,
		PRIMARY KEY (title_id)	
);

Select * from titles

-- Create salaries table
CREATE TABLE salaries(
		emp_no INT NOT NULL,
		salary INT NOT NULL,
		PRIMARY KEY (emp_no),
		FOREIGN KEY (emp_no) references employees(emp_no)
);

Select * from salaries

-- Create dept_manager table
CREATE TABLE dept_manager(
		dept_no VARCHAR(10) NOT NULL,
		emp_no INT NOT NULL,
		PRIMARY KEY (emp_no, dept_no),
		FOREIGN KEY (emp_no) references employees(emp_no),
		FOREIGN KEY (dept_no) references departments (dept_no)
		
);

Select * from dept_manager

-- Create departments table 
CREATE TABLE departments(
		dept_no VARCHAR(10) NOT NULL,
		dept_name VARCHAR(100) NOT NULL,
		PRIMARY KEY (dept_no)
		
);

Select * from departments

--Create dept_emp table 
CREATE TABLE dept_emp(
		emp_no INT NOT NULL,
		dept_no VARCHAR(10) NOT NULL,
		PRIMARY KEY (emp_no, dept_no),
		FOREIGN KEY (emp_no) references employees(emp_no),
		FOREIGN KEY (dept_no) references departments (dept_no)
		
);

Select * from dept_emp
SELECT * FROM dept_emp WHERE emp_no = 10010