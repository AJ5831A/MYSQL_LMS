SELECT gender , AVG(age) , MAX(age) , MIN(age) , COUNT(age)
FROM Parks_and_Recreation.employee_demographics
GROUP BY gender
;

SELECT occupation
FROM Parks_and_Recreation.employee_salary
GROUP BY occupation
;

SELECT *
FROM employee_demographics
ORDER BY first_name ASC
;

SELECT *
FROM employee_demographics
ORDER BY gender DESC, age DESC
;