-- 1. Average and Total Salary
SELECT
    AVG(salary) AS 'Average Salary',
    SUM(salary) AS 'Total Salary'
FROM
    EMPLOYEE;

-- 2. Count Employees in a Department
SELECT
    COUNT(Empno) AS 'Employee Count in Sales'
FROM
    EMPLOYEE
WHERE
    Deptcode = 1;

-- 3. Name Pattern Search
SELECT
    Empno,
    Name,
    Job
FROM
    EMPLOYEE
WHERE
    Name LIKE 'S%' AND LENGTH(Name) >= 4;

-- 4. Employees by Job Title
SELECT
    Empno,
    Name,
    hiredate
FROM
    EMPLOYEE
WHERE
    Job = 'Software Developer';

-- 5. Employees Hired Between Two Dates
SELECT
    Empno,
    Name,
    hiredate,
    Job
FROM
    EMPLOYEE
WHERE
    hiredate BETWEEN '2020-01-01' AND '2021-12-31'
ORDER BY
    Name ASC;

-- 6. Min & Max Salary
SELECT
    MIN(salary) AS 'Minimum Salary',
    MAX(salary) AS 'Maximum Salary'
FROM
    EMPLOYEE;

-- 7. Earliest & Latest Hire Date
SELECT
    MIN(hiredate) AS 'Earliest Hire Date',
    MAX(hiredate) AS 'Latest Hire Date'
FROM
    EMPLOYEE;

-- 8. Employee Count per Department
SELECT
    D.Deptname,
    COUNT(E.Empno) AS 'Employee Count'
FROM
    EMPLOYEE E
JOIN
    DEPARTMENT D ON E.Deptcode = D.Deptcode
GROUP BY
    D.Deptname
ORDER BY
    D.Deptname;

-- 9. Average Salary per Department
SELECT
    D.Deptname,
    AVG(E.salary) AS 'Average Salary'
FROM
    EMPLOYEE E
JOIN
    DEPARTMENT D ON E.Deptcode = D.Deptcode
GROUP BY
    D.Deptname
ORDER BY
    D.Deptname;

-- 10. High-Salary Departments
SELECT
    D.Deptname,
    SUM(E.salary) AS 'Total Department Salary'
FROM
    EMPLOYEE E
JOIN
    DEPARTMENT D ON E.Deptcode = D.Deptcode
GROUP BY
    D.Deptname
HAVING
    SUM(E.salary) > 200000.00;

-- 11. Employees in a Location
SELECT
    E.Name,
    E.Job,
    D.Deptname,
    D.Deptlocation
FROM
    EMPLOYEE E
JOIN
    DEPARTMENT D ON E.Deptcode = D.Deptcode
WHERE
    D.Deptlocation = 'New York';

-- 12. Total Salary by Department & Job Title
SELECT
    D.Deptname,
    E.Job,
    SUM(E.salary) AS 'Total Salary by Group'
FROM
    EMPLOYEE E
JOIN
    DEPARTMENT D ON E.Deptcode = D.Deptcode
GROUP BY
    D.Deptname,
    E.Job
ORDER BY
    D.Deptname,
    E.Job;