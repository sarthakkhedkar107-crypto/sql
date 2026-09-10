CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    marks INT
);


INSERT INTO Student (student_id, student_name, marks)
VALUES
(1, 'Rahul', 85),
(2, 'Amit', 92),
(3, 'Priya', 78),
(4, 'Sneha', 92),
(5, 'Sarthak', 88),
(6, 'Neha', 75),
(7, 'Rohit', 85),
(8, 'Pooja', 95),
(9, 'Akash', 78),
(10, 'Kiran', 88);
--select * from Student;


SELECT
    student_id,
    student_name,
    marks,
    RANK() OVER (ORDER BY marks DESC) AS student_rank
FROM Student;



SELECT
    student_id,
    student_name,
    marks,
    DENSE_RANK() OVER (ORDER BY marks DESC) AS student_rank
FROM Student;


SELECT
    student_id,
    student_name,
    marks,
    PERCENT_RANK() OVER (ORDER BY marks DESC) AS student_rank
FROM Student;