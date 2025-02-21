SELECT first_name , last_name, 'OLD MAN' label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name , last_name , 'OLD LADY' label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name , last_name , 'Highly Paid Employee' label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name , last_name
;
