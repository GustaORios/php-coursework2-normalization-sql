INSERT INTO `DEPARTMENT` (`Deptcode`, `Deptname`, `Deptlocation`) VALUES
(1, 'Sales', 'New York'),
(2, 'IT', 'San Francisco'),
(3, 'Finance', 'London'),
(4, 'HR', 'New York');

INSERT INTO `EMPLOYEE` (`Name`, `Job`, `hiredate`, `salary`, `Deptcode`) VALUES
('Alice Johnson', 'Sales Representative', '2020-01-15', 60000.00, 1),
('Bob Smith', 'Software Developer', '2019-05-20', 85000.00, 2),
('Charlie Brown', 'Accountant', '2021-11-10', 70000.00, 3),
('David Lee', 'HR Specialist', '2022-08-01', 55000.00, 4),
('Eva Martinez', 'Sales Manager', '2018-03-25', 95000.00, 1),
('Frank Wilson', 'Data Analyst', '2020-10-01', 75000.00, 2),
('Grace Hall', 'Financial Analyst', '2023-01-05', 68000.00, 3),
('Henry Adams', 'Recruiter', '2021-04-12', 58000.00, 4),
('Ivy King', 'Sales Representative', '2023-09-17', 62000.00, 1),
('Jack Green', 'Senior Developer', '2017-12-01', 110000.00, 2),
('Karen Baker', 'Auditor', '2022-02-14', 72000.00, 3),
('Liam Scott', 'HR Manager', '2019-07-07', 80000.00, 4),
('Mia Chen', 'Sales Representative', '2024-01-22', 61000.00, 1),
('Noah White', 'System Administrator', '2018-11-11', 80000.00, 2),
('Olivia Clark', 'Tax Specialist', '2020-06-30', 74000.00, 3),
('Peter Evans', 'HR Assistant', '2023-05-01', 50000.00, 4),
('Quinn Taylor', 'Sales Representative', '2020-03-10', 64000.00, 1),
('Ryan Harris', 'Software Developer', '2021-02-28', 90000.00, 2),
('Sarah Lewis', 'Controller', '2019-09-09', 100000.00, 3),
('Tom Robinson', 'HR Specialist', '2022-12-15', 56000.00, 4),
('Uma Torres', 'Sales Representative', '2021-07-01', 63000.00, 1),
('Victor Perez', 'Network Engineer', '2019-04-04', 88000.00, 2),
('Wendy Kim', 'Financial Analyst', '2023-03-13', 69000.00, 3),
('Xavier Ross', 'Recruiter', '2020-11-20', 60000.00, 4),
('Yara Silva', 'Sales Representative', '2022-04-05', 65000.00, 1);

INSERT INTO `EMPLOYEE` (`Name`, `Job`, `hiredate`, `salary`, `Deptcode`) VALUES
('Zane Miller', 'Technical Writer', '2021-10-10', 70000.00, 2); 

SELECT * FROM `EMPLOYEE` WHERE `salary` > 70000.00;
SELECT `Name`, `Job`, `hiredate` FROM `EMPLOYEE` WHERE `Deptcode` = 2 ORDER BY `Name`;

SELECT * FROM `DEPARTMENT` WHERE `Deptlocation` = 'New York';
SELECT `Deptname`, `Deptlocation` FROM `DEPARTMENT` WHERE `Deptcode` = 3;