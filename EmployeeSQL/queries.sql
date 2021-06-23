SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary FROM employees e
INNER JOIN salaries s
ON e.emp_no = s.emp_no;

Select e.first_name, e.last_name, e.hire_date 
FROM employees e where hire_date between '1986-01-01'And '1986-12-31';

SELECT d.dept_no, d.dept_name, e.last_name, e.first_name, e.emp_no FROM departments d
INNER JOIN dept_manager dm
ON d.dept_no = dm.dept_no INNER JOIN employees e
ON e.emp_no = dm.emp_no;

SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no,
	employees.last_name, employees.first_name
FROM departments
LEFT JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
LEFT JOIN employees
ON employees.emp_no = dept_manager.emp_no;

SELECT employees.emp_no, employees.last_name, employees.first_name,
	departments.dept_name
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_no;

SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT employees.emp_no,employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';

SELECT employees.emp_no,employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

SELECT last_name, COUNT(emp_no) AS "last_name_count"
FROM employees
GROUP BY last_name
ORDER BY last_name_count DESC;