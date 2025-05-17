-- Stored procedures
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CREATE PROCEDURE large_salary()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL large_salary();

DELIMITER $$
CREATE PROCEDURE large_salary3()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

CALL large_salary3();



DELIMITER $$
CREATE PROCEDURE large_salary4(employee_id_param INT) #need a data type
BEGIN
	SELECT salary
	FROM employee_salary
    WHERE employee_id = employee_id_param
	;
END $$
DELIMITER ;
CALL large_salary4(1);






