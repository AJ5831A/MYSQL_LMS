#WHERE Clause

SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE gender = 'Male'
AND NOT age > 50
AND age >30
;


# LIKE "%" "_" 

SELECT * 
FROM Parks_and_Recreation.employee_demographics
WHERE birth_date LIKE '1989%'
;
