CREATE TABLE emp (
emp_id  INT PRIMARY KEY,
emp_name VARCHAR (100),
emp_department_id INT
);
INSERT INTO emp (emp_id, emp_name, emp_department_id) VALUES
(1, 'Virat Kohli', 101),
(2, 'Rohit Sharma', 102),
(3, 'MS Dhoni', 103),
(4, 'Sachin Tendulkar', 104),
(5, 'KL Rahul', 105),
(6, 'Hardik Pandya', 106),
(7, 'Ravindra Jadeja', 107),
(8, 'Jasprit Bumrah', 108),
(9, 'Shubman Gill', 109),
(10, 'Rishabh Pant', 110),
(11, 'Yuvraj Singh', 111),
(12, 'Suresh Raina', 112),
(13, 'Mohammed Shami', 113),
(14, 'Bhuvneshwar Kumar', 114),
(15, 'Ishant Sharma', 115),
(16, 'Dinesh Karthik', 116),
(17, 'Ravichandran Ashwin', 117),
(18, 'Virender Sehwag', 118),
(19, 'Gautam Gambhir', 119),
(20, 'Harbhajan Singh', 120),
(21, 'Anil Kumble', 121),
(22, 'Kapil Dev', 122);

CREATE TABLE department (
department_id INT PRIMARY KEY,
department_name VARCHAR (100)
);
INSERT INTO department VALUES
(101 , 'HR '),
(102 , 'IT'),
(103 , ' Marketing'),
(104 , 'Financial ' ),
(105, 'Operations');

CREATE TABLE Salaries (
emp_id INT ,
Salary_amount DECIMAL (10 , 2),
PRIMARY KEY (emp_id),
FOREIGN KEY(project_lead_id) REFERENCES emp(emp_id)
);
INSERT INTO Salaries VALUES
(1, 65000.00),
(2, 72000.00),
(3, 58000.00),
(4, 61000.00),
(5, 75000.00),
(6, 69000.00),
(7, 54000.00),
(8, 80000.00),
(9, 62000.00),
(10, 71000.00),
(11, 66000.00),
(12, 73000.00),
(13, 59000.00),
(14, 64000.00),
(15, 77000.00),
(16, 82000.00),
(17, 56000.00),
(18, 60000.00),
(19, 70000.00),
(20, 68000.00);

CREATE TABLE Projects (
project_id INT PRIMARY KEY,
project_name VARCHAR (100),
project_lead_id INT,
FOREIGN KEY(Project_lead_id)REFERENCES emp(emp_id)
);
INSERT INTO Projects VALUES 
(1,'Project A',1),
(2,'Project B',2),
(3,'Project C',3),
(4,'Project D',4),
(5,'Project E',5);
SELECT * FROM  Projects;
SELECT * FROM emp;
SELECT * FROM Salaries ;