-- creating a table named Students
CREATE TABLE Students (
    std_id INT,
    std_name VARCHAR(50),
    dept_id INT
);

-- inserting values into table Students
INSERT INTO Students VALUES
(1, 'Rapunzel', 101),
(2, 'Flyn', 102),
(3, 'Moana', 103),
(4, 'Carlos', NULL);

-- creating a table named Departments
CREATE TABLE Departments (
    dept_id INT,
    dept_name VARCHAR(50)
);

-- inserting values into table Departments
INSERT INTO Departments VALUES
(101, 'Computer Science Engineering'),
(102, 'Biomedical Engineering'),
(104, 'Chemical Engineering');


--performing inner join
SELECT s.std_name, d.dept_name
FROM Students s
INNER JOIN Departments d ON s.dept_id = d.dept_id;

--performing left join 
SELECT s.std_name, d.dept_name
FROM Students s
LEFT JOIN Departments d ON s.dept_id = d.dept_id;

--performing right join 
SELECT s.std_name, d.dept_name
FROM Students s
RIGHT JOIN Departments d ON s.dept_id = d.dept_id;

--performing full outer join 
SELECT s.std_name, d.dept_name
FROM Students s
FULL OUTER JOIN Departments d ON s.dept_id = d.dept_id;
