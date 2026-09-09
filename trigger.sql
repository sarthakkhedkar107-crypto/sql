/*
CREATE TABLE employee (
    emp_id INTEGER PRIMARY KEY,
    employee_name TEXT,
    designation TEXT,
    dept TEXT,
    salary REAL
);

CREATE TRIGGER trigger_before_insert
BEFORE INSERT ON employee
FOR EACH ROW
WHEN NEW.salary > 0
BEGIN
    SELECT RAISE(IGNORE);
END;

INSERT INTO employee VALUES
(1, 'Rahul', 'Developer', 'IT', -5000),
(2, 'Priya', 'Manager', 'HR', 60000);

SELECT * FROM employee;



CREATE TABLE emp (
    empId INTEGER PRIMARY KEY AUTOINCREMENT,
    empName VARCHAR(45),
    designation VARCHAR(45),
    salary INTEGER,
    address VARCHAR(45),
    mobile INTEGER
);


CREATE TABLE emp_salary (
    total_salary INTEGER
);


INSERT INTO emp_salary (total_salary)
VALUES (0);

-- Create Trigger
CREATE TRIGGER before_insert_emp
AFTER INSERT ON emp
FOR EACH ROW
BEGIN
    UPDATE emp_salary
    SET total_salary = total_salary + NEW.salary;
END;

-- Insert Employees
INSERT INTO emp (empName, designation, salary, address, mobile)
VALUES
('Rahul', 'Developer', 50000, 'Pune', 987654321),
('Priya', 'Manager', 60000, 'Mumbai', 987654322),
('Amit', 'Tester', 40000, 'Nashik', 987654323);


SELECT * FROM emp;

SELECT * FROM emp_salary;

*/


CREATE TABLE WorkCenters (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100) NOT NULL,
    capacity INTEGER NOT NULL
);

CREATE TABLE WorkCenterStats (
    totalCapacity INTEGER NOT NULL
);

-- Insert initial total salary/capacity value
INSERT INTO WorkCenterStats (totalCapacity)
VALUES (0);

-- Create trigger
CREATE TRIGGER after_insert_workcenter
AFTER INSERT ON WorkCenters
FOR EACH ROW
BEGIN
    UPDATE WorkCenterStats
    SET totalCapacity = totalCapacity + NEW.capacity;
END;

-- Insert records
INSERT INTO WorkCenters (name, capacity)
VALUES ('Hot machine', 200);

INSERT INTO WorkCenters (name, capacity)
VALUES ('Cold machine', 300);

-- View WorkCenters
SELECT * FROM WorkCenters;

-- View total capacity
SELECT * FROM WorkCenterStats;

-- Count rows
SELECT COUNT(*) FROM WorkCenterStats;