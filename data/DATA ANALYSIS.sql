--List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
-- i'm just learning you can use this e.  thing
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;

--DONT FORGET TO HIGHLIGHT THE CODE YOU WANT TO RUN DUMB IDIOT BAKAAAAAAAAAA
--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-1-1' and '1986-12-31'
ORDER BY hire_date;

-- List the manager of each department along with their department number, 
-- department name, employee number, last name, and first name. AND TITLE BECAUSE WHY NOT
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
JOIN employees e
ON dm.emp_no = e.emp_no
JOIN departments d
ON dm.dept_no = d.dept_no
ORDER BY d.dept_name;

--List the department number for each employee along with that employee’s
--employee number, last name, first name, and department name.
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON d.dept_no = de.dept_no
ORDER BY d.dept_name ASC;