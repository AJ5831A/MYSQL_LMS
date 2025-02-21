SELECT * 
FROM employee_demographics
;

SELECT *
FROM employee_salary
;

SELECT dem.employee_id , age , occupation 
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;


SELECT * 
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;


SELECT * 
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
	ON emp1.employee_id +1 = emp2.employee_id
;


SELECT * 
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
	ON pd.department_id = sal.dept_id
;
