-- Active: 1746541111917@@127.0.0.1@3306@employees
-- Active: 1746541111917@@127.0.0.1@3306@aloha
DELIMITER //

CREATE FUNCTION calculate_month_salary(emp_no INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE annual_salary DECIMAL(10,2);
    
    SELECT salary / 12
    INTO annual_salary
    FROM salaries
    WHERE employee_id = emp_no
    AND to_date = '9999-01-01';
    
    RETURN annual_salary;
END //

DELIMITER ;

