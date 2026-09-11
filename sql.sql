CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);


INSERT INTO departments (id, name) VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Sales');

INSERT INTO employees (id, name, department_id) VALUES
(101, 'Sachin', 1), (102, 'Rohit', 2),(103, 'Dhiraj', 1), (104, 'Nihal', 3),  
(105, 'Pranav', 4); 

select * from employees;
select * from departments;  
SELECT name FROM employees
WHERE department_id = (
  SELECT id FROM departments WHERE name = 'IT'
);


SELECT id FROM departments WHERE name = 'HR'