

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    joining_date DATE NOT NULL,
    status VARCHAR(20) DEFAULT 'Active'
);



--CREATE TRIGGER before_insert_employees
--BEFORE INSERT ON employees
--FOR EACH ROW
--WHEN NEW.salary <= 0
--BEGIN
   -- SELECT RAISE(ABORT, 'Salary must be greater than 0');
---END;


INSERT INTO employees
(employee_id, employee_name, department, salary, joining_date, status)
VALUES
(101, 'Rahul Patil', 'IT', 5500, '2022-06-15', 'Active'),
(102, 'Priya Sharma', 'HR', 4800, '2021-03-20', 'Active'),
(103, 'Amit Joshi', 'Finance', 6200, '2020-08-10', 'Active'),
(104, 'Sneha Kulkarni', 'IT', 5800, '2023-01-12', 'Active'),
(105, 'Sarthak Khedkar', 'HR', 7000, '2024-10-09', 'Active'),
(106,'Adity Khedkar','IT',1000,'2023-01-12','Active');

CREATE TRIGGER before_update_employee
BEFORE UPDATE ON employees
FOR EACH ROW
WHEN NEW.salary < 10000
BEGIN
    SELECT RAISE(ABORT, 'Salary cannot be less than 10,000');
END;

UPDATE employees
SET salary = 5000
WHERE employee_id = 101;

SELECT * FROM employees;

/*
CREATE TABLE employee_audit (
    audit_id INT PRIMARY KEY,
    employee_id INT,
    employee_name VARCHAR(100),
    action_type VARCHAR(30),
    old_salary DECIMAL(10,2),
    new_salary DECIMAL(10,2),
    action_date DATETIME
);

INSERT INTO employee_audit
(employee_id, employee_name, action_type, old_salary, new_salary, action_date)
VALUES
(101, 'Rahul Patil', 'INSERT', NULL, 55000.00, '2026-09-12 10:00:00'),
(102, 'Priya Sharma', 'UPDATE', 45000.00, 48000.00, '2026-09-12 10:15:00'),
(103, 'Amit Joshi', 'UPDATE', 60000.00, 62000.00, '2026-09-12 10:30:00'),
(104, 'Sneha Kulkarni', 'DELETE', 58000.00, NULL, '2026-09-12 10:45:00'),
(105, 'Sarthak Khedkar', 'INSERT', NULL, 70000.00, '2026-09-12 11:00:00');



CREATE TRIGGER after_insert_employee
AFTER INSERT ON employee_audit
FOR EACH ROW
BEGIN
    INSERT INTO employee_audit
    (
        employee_id,
        employee_name,
        action_type,
        old_salary,
        new_salary,
        action_date
    )
    VALUES
    (
        NEW.employee_id,
        NEW.employee_name,
        'INSERT',
        NULL,
        NEW.new_salary,
        CURRENT_TIMESTAMP
    );
END;

INSERT INTO employee_audit
(employee_id, employee_name, action_type, old_salary, new_salary, action_date)
VALUES
(108, 'Vinod Jadhav', 'INSERT', 60000.00, 533000.00, '2023-09-10 10:00:22');
select * from employee_audit;

*/

