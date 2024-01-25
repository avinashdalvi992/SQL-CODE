create database advance_assisment;
use advance_assisment;

create table employeeinfo_table(
empid int,
employee_first_name varchar(50),
employee_last_name varchar(50),
Daprtment varchar(50),
project varchar(50),
Address varchar(50),
DOB date,
Gender char(50),
);

select * from employeeinfo_table 

insert into employeeinfo_table
values(1,'sanjay','mehra','HR','P1','HYD','01-12-1996','M'),
(2, 'ANANYA' , 'MISHRA' , 'ADMIN' , 'P2' , 'DELHI(DEL)', '1968-05-02' , 'F'),
(3, 'ROHAN' , 'DIWAN' , 'ACCOUNT' , 'P3' , 'MUMBAI(BOM)', '1980-01-01' , 'M'),
(4, 'SONIA' , 'KULKARNI' , 'HR' , 'P1' , 'HYDERBAD(HYD)', '1992-05-02' , 'F'),
(5, 'ANKIT' , 'KAPOOR' , 'ADMIN' , 'P2' , 'DELHI(DEL)', '1994-07-03' , 'M');

select * from employeeinfo_table


create table employeeposition(
employee_ID int,
employeeposition varchar(50),
dateofjoining date,
salary int,
);

select * from employeeposition

insert into employeeposition
values(1,'manager','01-05-2022',500000),
(2 , 'EXECUTIVE' , '02-05-2022' , 75000),
(3 , 'MANAGER' , '01-05-2022' , 90000),
(4 , 'LEAD' , '02-05-2022' , 85000),
(5 , 'EXECUTIVE' , '01-05-2022' , 300000);

select * from employeeposition

--Q1)Write a query to fetch the EmpFname from the EmployeeInfo table in the upper case and use the ALIAS name as EmpName.

select upper(employee_first_name) as empname from employeeinfo_table

--Q2)Write a query to fetch the number of employees working in the department ‘HR’.
	
select count(*) from employeeinfo_table where Daprtment = 'HR';

--Q3)Write a query to get the current date.
select GETDATE();

---Q4)Write a query to retrieve the first four characters of  EmpLname from the EmployeeInfo table.


select SUBSTRING(employee_last_name , 1,4) from employeeinfo_table

--Q5)Write a query to fetch only the place name(string before brackets) from the Address column of EmployeeInfo table.

select SUBSTRING(Address,1,CHARINDEX('(',Address)) from employeeinfo_table;

--Q6)Write a query to create a new table that consists of data and structure copied from the other table.

--Q7)Write q query to find all the employees whose salary is between 50000 to 100000.

select * from employeeposition where salary between 50000 and 100000;

--Q8)Write a query to find the names of employees that begin with ‘S’

select * from employeeinfo_table where employee_first_name like 'S%';

--Q9)Write a query to fetch top N records.

--Q10)Write a query to retrieve the EmpFname and EmpLname in a single column as “FullName”. 
--The first name and the last name must be separated with space.

SELECT CONCAT(EMPLOYEE_FIRST_NAME, ' ',EMPLOYEE_LAST_NAME) AS FULL_NAME FROM employeeinfo_table;

--Q11. Write a query find number of employees whose DOB is between 02/05/1970 to 31/12/1975 
--and are grouped according to gender

SELECT * FROM employeeinfo_table
SELECT Gender,COUNT(*) AS EMPLOYEE_COUNT FROM employeeinfo_table WHERE DOB between '1970/05/02' AND '1975/12/31' GROUP BY Gender;

--Q12. Write a query to fetch all the records from the EmployeeInfo table ordered by EmpLname in 
--descending order and Department in the ascending order.

select * from employeeinfo_table order by employee_first_name DESC, Daprtment ASC;


SELECT * FROM employeeinfo_table ORDER BY employee_first_name DESC, Daprtment ASC;

--Q13. Write a query to fetch details of employees whose EmpLname ends with an alphabet ‘A’ and contains five alphabets.

SELECT * FROM employeeinfo_table WHERE employee_last_name LIKE '____A'; 

--Q14. Write a query to fetch details of all employees excluding the employees with first names, 
--“Sanjay” and “Sonia” from the EmployeeInfo table.

SELECT * FROM employeeinfo_table WHERE employee_first_name NOT IN ('SANJAY','SONIA');


--Q15. Write a query to fetch details of employees with the address as “DELHI(DEL)”.
SELECT * FROM employeeinfo_table
SELECT * FROM employeeinfo_table WHERE Address LIKE 'DELHI(DEL)';

--Q16. Write a query to fetch all employees who also hold the managerial position.

SELECT * FROM employeeinfo_table
SELECT * FROM employeeposition

SELECT employeeinfo_table.employee_first_name,employeeinfo_table.employee_last_name,employeeposition.employeeposition
FROM employeeinfo_table
INNER JOIN employeeposition ON employeeinfo_table.empid = employeeposition.employee_ID AND employeeposition.employeeposition IN ('MANAGER');



--Q17. Write a query to fetch the department-wise count of employees sorted by department’s count in ascending order.

SELECT * FROM employeeinfo_table 
SELECT * FROM employeeposition

 SELECT Daprtment ,COUNT(empid) AS EMPDEPPCOUNT 
FROM employeeinfo_table GROUP BY Daprtment
 ORDER BY EMPDEPPCOUNT ASC;

--Q18. Write a query to calculate the even and odd records from a table.

select * from employeeinfo_table
select * from employeeposition;

--Q19. Write a SQL query to retrieve employee details from EmployeeInfo table who have 
--a date of joining in the EmployeePosition table.

SELECT employeeposition
FROM
    employeeinfo_table
JOIN
    EmployeePosition ON employeeinfo_table.empid = EmployeePosition.employee_ID
WHERE
    EmployeePosition.DateOfJoining IS NOT NULL;


--Q20. Write a query to retrieve two minimum and maximum salaries from the EmployeePosition table.

select * from employeeposition

select min(salary) as minimum , MAX(salary) as maxmimum  from employeeposition

--Q21. Write a query to find the Nth highest salary from the table without using TOP/limit keyword.

dot


--Q22. Write a query to retrieve duplicate records from a table.

select * from employeeposition
select * from employeeinfo_table

select * from employeeinfo_table
select empid,employee_first_name,daprtment,Gender,COUNT(*) from employeeinfo_table
group by empid,employee_first_name,Daprtment,Gender having COUNT(*)> 1;

--Q23. Write a query to retrieve the list of employees working in the same department.

select COUNT(*) deprtment from employeeposition

--Q24. Write a query to retrieve the last 3 records from the employeeinfo_table. 
select * from employeeinfo_table limit 3;

--Q25. Write a query to find the third-highest salary from the EmpPosition table.

SELECT MAX(salary) AS third_highest_salary
FROM select * from employeeposition
WHERE salary NOT IN (
    SELECT DISTINCT TOP 2 salary
    FROM select * from employeeposition
    ORDER BY salary DESC

--Q26. Write a query to display the first and the last record from the EmployeeInfo table.
select * from employeeinfo_table
select employee_first_name ,employee_last_name from employeeinfo_table;


--Q27. Write a query to add email validation to your database

select * from employeeinfo_table
alter table employeeinfo_table add email varchar(50);


--Q28. Write a query to retrieve Departments who have less than 2 employees working in it.
select * from employeeposition
select daprtment,COUNT(*) as 'employeeno' from employeeinfo_table group by Daprtment having COUNT(empid) <2;

--Q29. Write a query to retrieve EmpPostion along with total salaries paid for each of them
select * from employeeposition
select employeeposition, sum(salary) from employeeposition group by employeeposition

--Q30. Write a query to fetch 50% records from the employeeinfo_table

select * from employeeinfo_table
select * from employeeinfo_table where empid <= (select COUNT(empid)/2 from employeeinfo_table);
