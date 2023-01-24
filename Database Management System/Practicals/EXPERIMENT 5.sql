CREATE DATABASE experiment5;
USE experiment5;

CREATE TABLE eDetails (
    empNo INT NOT NULL,
    empName VARCHAR(20),
    dept VARCHAR(20),
    salary INT(10) NOT NULL,
    doj DATE NOT NULL,
    branch VARCHAR(20)
);
    
INSERT INTO eDetails (empNo, empName, dept, salary, doj, branch)
VALUES ('101', 'Amit', 'Production', 45000, '2000-12-03' , 'Bangalore'),
	   ('102', 'Amit', 'HR', 70000, '2002-03-07' , 'Bangalore'),
       ('103', 'Sunita', 'Management', 120000, '2001-11-01' , 'Mysore'),
       ('104', 'Sunita', 'IT', 67000, '2001-01-08' , 'Mysore'),
       ('105', 'Mahesh', 'Civil', 145000, '2003-02-09' , 'Mumbai');

1. Display all the fields of employee table.

SELECT dept 
FROM eDetails;

2. Retrieve employee number and their salary.

SELECT empNo, salary
FROM eDetails;

3. Retrieve average salary of all the employee.

SELECT AVG(salary), COUNT(*)
FROM eDetails;

4. Retrieve number of employee.

SELECT COUNT(*)
FROM eDetails;

5. Retrieve distinct number of employee.

SELECT DISTINCT empName
FROM eDetails;

6. Retrieve total salary of employee group by employee name and count similar names.

SELECT *
FROM eDetails
ORDER BY empName, salary;

7. Retrieve total salary of employee which is greater than 120000.

SELECT *
FROM eDetails
WHERE salary > 120000
ORDER BY empName ;

8. Display name of employee in decending order.

SELECT empName
FROM eDetails
ORDER BY empName DESC;

9. Display the name of employee whose name is Amit and salary is greater than 50000.

SELECT empNo, empName
FROM eDetails
WHERE empName LIKE 'A%' AND salary > 50000;

