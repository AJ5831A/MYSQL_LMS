SELECT first_name , 
last_name,
age,
CASE
	WHEN age <= 30 THEN "YOUNG"
    WHEN age BETWEEN 31 and 50 then "work"
    WHEN age > 50 THEN "Retire"
END AS life
FROM employee_demographics
;C

SELECT first_name , salary,
CASE
	WHEN salary > 50000 THEN salary * 1.07
    WHEN salary <50000 THEN salary * 1.05
    WHEN dept_id = 6 THEN salary * 1.1
END AS new_pay
FROM employee_salary
;


