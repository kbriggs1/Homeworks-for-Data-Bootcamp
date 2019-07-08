-- Data Analysis --
-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.gender, Salaries.salary
FROM Employees
JOIN Salaries
ON Employees.emp_no = Salaries.emp_no;

-- 2. List employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM Employees
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name, dept_manager.from_date, dept_manager.to_date
FROM departments
JOIN Dept_Manager
ON departments.dept_no = Dept_Manager.dept_no
JOIN Employees
ON Dept_Manager.emp_no = Employees.emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, Employees.last_name, Employees.first_name, departments.dept_name
FROM dept_emp
JOIN Employees
ON dept_emp.emp_no = Employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name
FROM Employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, Employees.last_name, Employees.first_name, departments.dept_name
FROM dept_emp
JOIN Employees
ON dept_emp.emp_no = Employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, Employees.last_name, Employees.first_name, departments.dept_name
FROM dept_emp
JOIN Employees
ON dept_emp.emp_no = Employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' 
OR departments.dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;
