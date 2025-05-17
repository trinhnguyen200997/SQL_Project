-- Case statement

SELECT first_name,
last_name,
age,
CASE 
	WHEN age <= 31 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'Mid'
    ELSE 'Old'
END AS 'Age_bracket'
    
FROM employee_demographics;

-- Pay Increase and bonus
-- < 50000 = 5%
-- > 50000 =7%
-- Finance = 10% bonus
 SELECT *
 FROM employee_salary;
 

SELECT
first_name,
Last_name,
salary,

CASE
	WHEN salary <= 50000 THEN salary + (0.05 *sal.salary)
    WHEN salary > 50000 THEN salary +(0.07 *sal.salary)
    END AS 'new salary',
    
CASE 
	WHEN department_name LIKE '%Finance%' THEN salary + (0.1 *sal.salary)
END AS 'bonus'

FROM employee_salary AS sal
LEFT JOIN parks_departments AS pd
	ON sal.dept_id = pd.department_id;


 
 