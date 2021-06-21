Create table titles 
(
title_id VARCHAR(10) primary key,
title VARCHAR (30)
)
Create table employees(
emp_no INT PRIMARY KEY,
emp_title_id varchar (10), 
birth_date DATE, 	
first_name VARCHAR (30),
last_name VARCHAR (30),
sex VARCHAR (10),
hire_date DATE,FOREIGN KEY (emp_title_id) references titles (title_id) 	
)
Create Table departments (
dept_no VARCHAR (10) PRIMARY KEY,
dept_name VARCHAR (30)
)
Create Table dept_emp (
emp_no INT,
dept_no VARCHAR (10),
Foreign Key (emp_no) references employees (emp_no),
Foreign Key (dept_no) references departments (dept_no)
)
Create Table dept_manager (
dept_no VARCHAR (10),
emp_no INT,
Foreign Key (dept_no) references departments (dept_no),	
Foreign Key (emp_no) references employees (emp_no)
)
Create Table salaries (
emp_no INTEGER Primary Key, 
salary INTEGER,
Foreign Key (emp_no) references employees (emp_no)
)