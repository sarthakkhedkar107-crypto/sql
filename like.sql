 CREATE TABLE department2 (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

insert into department2 (dept_id,dept_name)
values
(1,'hr'),
(2,'IT'),
(3,'manger'),
(4,'sale');



--select * from department2 where dept_name like "s%e";
--select * from department2 where dept_name like "s%";
--select * from department2 where dept_name like "%s";
--select * from department2 where dept_name like "%a%";

--select * from department2 where dept_name like "m__%";