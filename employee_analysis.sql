--employee: employee number, last name, first name, sex, and salary.
SELECT employees.eeno,employees.namel,employees.namef,employees.sex, salary.sal
FROM employees
JOIN salary
ON (employees.eeno = salary.eeno);

--first name, last name, and hire date for employees who were hired in 1986.
SELECT namef, namel, doh
FROM employees
WHERE EXTRACT (YEAR FROM doh) = 1986;

-- department number, department name, the manager's employee number, last name, first name.
SELECT dept_man.deno, departments.dename, dept_man.eeno, employees.namel, employees.namef
FROM dept_man
JOIN departments
ON (dept_man.deno = departments.deno)
JOIN employees
ON (dept_man.eeno = employees.eeno);

-- employee number, last name, first name, and department name.
SELECT employees.eeno,employees.namel,employees.namef, departments.dename
FROM employees
JOIN dept_emp
ON (dept_emp.eeno = employees.eeno)
	JOIN departments
	ON (departments.deno = dept_emp.deno);
	
--first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT namef, namel, sex 
FROM employees
WHERE (namef = 'Hercules') and (namel LIKE 'B%') ;

-- Sales department, including their employee number, last name, first name, and department name.
SELECT employees.eeno,employees.namel,employees.namef, departments.dename
FROM employees
JOIN dept_emp
ON (dept_emp.eeno = employees.eeno)
	JOIN departments
	ON (departments.deno = dept_emp.deno)
WHERE (departments.deno = 'd007');

--Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.eeno,employees.namel,employees.namef, departments.dename
FROM employees
JOIN dept_emp
ON (dept_emp.eeno = employees.eeno)
	JOIN departments
	ON (departments.deno = dept_emp.deno)
WHERE (departments.deno = 'd007') or (departments.deno = 'd005');

--frequency count of employee last names descending
SELECT namel, COUNT(namel) AS Freq
FROM employees
GROUP BY namel
ORDER BY Freq DESC;

-- Searching my ID number
SELECT *
FROM employees
WHERE (eeno = 499942);

