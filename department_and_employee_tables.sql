CREATE TABLE employee (
	name varchar(50) NOT NULL,
	age int NOT NULL,
	department_id int NOT NULL,
	salary decimal(12,2) NOT NULL ,
	foreign key (department_id) references department(id)
	)
INSERT INTO employee(name, age, department_id, salary)
VALUES 
    ('David Ingle', 23, 1, 45000),
    ('Alice Johnson', 29, 2, 50000),
    ('Bob Smith', 31, 3, 55000),
    ('Charlie Brown', 27, 4, 60000),
    ('Diana Prince', 35, 5, 65000),
    ('Eve Adams', 26, 6, 70000),
    ('Frank Castle', 40, 7, 75000),
    ('Grace Lee', 22, 8, 80000),
    ('Hank Green', 34, 1, 85000),
    ('Ivy Walker', 28, 2, 90000),
    ('Jack Miller', 30, 3, 95000),
    ('Karen Davis', 25, 4, 47000),
    ('Liam Harris', 32, 5, 52000),
    ('Mia Wilson', 24, 6, 57000),
    ('Nina Turner', 29, 7, 62000),
    ('Oscar White', 33, 8, 67000),
    ('Paul Harris', 37, 1, 72000),
    ('Quinn Scott', 26, 2, 77000),
    ('Rita Adams', 31, 3, 82000),
    ('Steve Harris', 29, 4, 43000),
    ('Tina Robinson', 28, 5, 48000),
    ('Ursula Murphy', 34, 6, 53000),
    ('Vince Turner', 39, 7, 58000),
    ('Wendy Baker', 22, 8, 63000),
    ('Xander Cook', 27, 1, 68000),
    ('Yara Davis', 30, 2, 73000),
    ('Zack Green', 31, 3, 78000),
    ('Anna Brown', 24, 4, 43000),
    ('Ben Wright', 35, 5, 48000),
    ('Cleo Harris', 26, 6, 53000),
    ('Derek Smith', 38, 7, 58000),
    ('Ella Wilson', 23, 8, 63000),
    ('Finn Adams', 29, 1, 68000),
    ('Gina Jones', 28, 2, 73000),
    ('Hugo Johnson', 32, 3, 78000),
    ('Iris Clark', 30, 4, 43000),
    ('Jake Miller', 25, 5, 48000),
    ('Luna Martinez', 27, 6, 53000),
    ('Mark White', 34, 7, 58000),
    ('Nina Young', 22, 8, 63000),
    ('Oscar Taylor', 31, 1, 68000),
    ('Penny Evans', 26, 2, 73000),
    ('Quincy Clark', 32, 3, 78000),
    ('Riley King', 29, 4, 43000),
    ('Sam Garcia', 33, 5, 48000),
    ('Tina Lopez', 27, 6, 53000),
    ('Ulysses Adams', 38, 7, 58000),
    ('Vera King', 22, 8, 63000),
    ('Will Rogers', 30, 1, 68000);

	
CREATE TABLE department(
	id int primary key,
	name varchar(60) not null 
	)

INSERT INTO department (id, name)
values (1, 'IT'),
	   (2, 'HR'),
	   (3, 'IT'),
	   (4, 'Marketing'),
	   (5, 'logistic'),
	   (6, 'Finance'),
	   (7, 'Sales'),
	   (8, 'Customer Support');


SELECT * FROM department;

-- this is a DML commands
UPDATE  department
set name = 'Qunlity Control'
where id = 3;



SELECT * FROM employee e
join department d on e.department_id = d.id;

-- this is a DDL commands 
ALTER TABLE department rename id to department_id ;



