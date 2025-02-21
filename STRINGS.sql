SELECT first_name , LENGTH(first_name)
FROM employee_demographics
ORDER BY LENGTH(first_name) ASC
;

SELECT first_name , UPPER(first_name)
FROM employee_demographics
;

SELECT first_name,
LEFT(first_name , 4),
RIGHT(first_name , 4),
SUBSTRING(first_name , 2 , 3),
birth_date,
SUBSTRING(birth_date,6,2) AS months
FROM employee_demographics
;

SELECT first_name , last_name,
CONCAT(first_name , " " ,last_name) AS full_name
FROM employee_demographics
;