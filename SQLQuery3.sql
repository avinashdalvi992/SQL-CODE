
---Q1)SQL Query to fetch records that are present in one table but not in another table.
Create database AvinashPVT_LTE

create table Employee_detailes(
emp_id int,
full_name varchar(50),
Manager_ID int,
dateofjoining date,
city varchar(50)

)

select * from Employee_detailes

insert into Employee_detailes
VALUES (121,'JOHN SNOW',321,'2019-01-31','TORONTO'),
(321,'WALTER WHITE',986,'2019-01-31','TORONTO'),
(421, 'KULDEEP RANA',876,'2021-11-27','NEW DELHI');

select * from Employee_detailes

create table employeesalary(
empID int,
project varchar(50),
salary int,
variable int,


)

select * from employeesalary

insert into employeesalary
values (121,'P1',8000,5000),
(321,'P2',10000,1000),
(421,'P1',12000,0);

select * from employeesalary


--Q2)SQL query to fetch all the employees who are not working on any project.

select * from Employee_detailes
select * from employeesalary

select Employee_detailes.full_name,employeesalary.project
from Employee_detailes
full join employeesalary on Employee_detailes.emp_id = employeesalary.empID;

select Employee_detailes.emp_id ,employeesalary.project
from Employee_detailes
full join employeesalary on Employee_detailes.emp_id =employeesalary.empID;

--Q3)SQL query to fetch all the Employees from EmployeeDetails who joined in the Year 2019.

select * from Employee_detailes
select * from employeesalary

select * from Employee_detailes where dateofjoining = '2019-01-31';

---Q4)Fetch all employees from EmployeeDetails who have a salary record in EmployeeSalary.

select * from Employee_detailes
select * from employeesalary

select Employee_detailes.full_name,employeesalary.salary
from Employee_detailes
full join employeesalary on Employee_detailes.emp_id = employeesalary.empID;


---Q5)Write an SQL query to fetch a project-wise count of employees.

select * from Employee_detailes

select Project, COUNT(empid) as employeeprojectcount
from employeesalary
group by project
order by employeeprojectcount desc;

---Q6)Fetch employee names and salaries even if the salary value is not present for the employee.
select * from Employee_detailes
select * from employeesalary

select Employee_detailes.full_name,employeesalary.salary
from employeesalary
left join Employee_detailes on Employee_detailes.emp_id = employeesalary.empID;


select Employee_detailes.full_name,employeesalary.salary
from employeesalary
left join Employee_detailes on Employee_detailes.emp_id = employeesalary.empID;

---Q7)Write an SQL query to fetch all the Employees who are also managers.

select * from Employee_detailes
select * from employeesalary

select full_name managar_ID from Employee_detailes



--Q8)Write an SQL query to fetch duplicate records from EmployeeDetails.

select * from Employee_detailes

select full_name, count(*) from Employee_detailes
group by full_name having COUNT(*)>1;

---Q9)Write an SQL query to fetch only odd rows from the table.

select * from Employee_detailes
select * from employeesalary

select * from Employee_detailes where emp_id %2 =1;


---Q10)Write a query to find the 3rd highest salary from a table without top or limit keyword.
select * from employeesalary

select MAX(salary) as 'third hight salary' from employeesalary

select MAX(salary) as 'thired hight salary'from employeesalary

--ASSIGMENT 2 

--Ques.1. Write an SQL query to fetch the EmpId and FullName of all the employees working under the Manager with id – ‘986’.

select * from Employee_detailes
select full_name,emp_id from Employee_detailes where Manager_ID =986;

select full_name,emp_id from Employee_detailes where Manager_ID=986; 

--Ques.2. Write an SQL query to fetch the different projects available from the EmployeeSalary table.

select * from Employee_detailes
select * from employeesalary

select distinct (project) from employeesalary


---Ques.3. Write an SQL query to fetch the count of employees working in project ‘P1’.

select * from Employee_detailes
select * from employeesalary

select count(*) from employeesalary where project ='p1';

---Ques.4. Write an SQL query to find the maximum, minimum, and average salary of the employees.

select * from Employee_detailes
select * from employeesalary

select MAX(salary) as maximum, min(salary) as minimum, AVG(salary) as average from employeesalary

---Ques.5. Write an SQL query to find the employee id whose salary lies in the range of 9000 and 15000.

select * from Employee_detailes

select empID, salary from employeesalary where salary between 9000 and 15000;


--Ques.6. Write an SQL query to fetch those employees who live in Toronto and work under the manager with ManagerId – 321.

select * from Employee_detailes

select emp_ID,city,Manager_ID from Employee_detailes where city ='toronto'and Manager_ID =321;

--Ques.7. Write an SQL query to fetch all the employees who either live in toronto or work under a manager with ManagerId – 321.

select * from Employee_detailes

select emp_id, Manager_ID,city from Employee_detailes where city= 'toronto'and Manager_ID =321;


--Ques.8. Write an SQL query to fetch all those employees who work on Projects other than P1.

select * from employeesalary
select empID,salary from employeesalary where not project ='p1';


--Ques.9. Write an SQL query to display the total salary of each employee adding the Salary with Variable value.

select * from employeesalary

select empID,salary+variable as totalsalary from employeesalary;


--Ques.10. Write an SQL query to fetch the employees whose name begins with any two characters, 
--followed by a text “hn” and ends with any sequence of characters.

select * from Employee_detailes
select full_name from Employee_detailes where full_name LIKE '__hn%';

--ASSIGMENT NO 3


--Ques.1 Write an SQL query to fetch all the EmpIds which are present in either of the tables 
--‘EmployeeDetails’ and ‘EmployeeSalary’.

select * from Employee_detailes
select * from employeesalary

select emp_id from Employee_detailes
union 
select empID from employeesalary

--Ques.2 Write an SQL query to fetch common records between two tables.

select * from Employee_detailes
select * from employeesalary

select *from Employee_detailes	
where emp_ID in (select empID from employeesalary);

--Ques.3. Write an SQL query to fetch records that are present in one table but not in another table.

select Employee_detailes.full_name,employeesalary.salary
from employeesalary
left join Employee_detailes on Employee_detailes.emp_id = employeesalary.empID; 

--Ques.4. Write an SQL query to fetch the EmpIds that are present in both the tables –  ‘EmployeeDetails’ and ‘EmployeeSalary.

select emp_id from Employee_detailes
union 
select empID from employeesalary

select emp_ID from Employee_detailes where emp_id in (select emp_id from employeesalary);

--- 5.Write an SQL query to fetch the EmpIds that are present in EmployeeDetails but not in EmployeeSalary.
select emp_ID from Employee_detailes where emp_id in ( select emp_id from employeesalary);

select Employee_detailes.emp_id ,employeesalary.salary
from employeesalary
left join Employee_detailes on Employee_detailes.emp_id = employeesalary.empID;

--Ques.6. Write an SQL query to fetch the employee’s full names and replace the space

select * from Employee_detailes
select REPLACE(full_name,'','') from Employee_detailes

--Ques.7. Write an SQL query to fetch the position of a given character(s) in a field.

select len(full_name) from Employee_detailes

select emp_id, Manager_ID from Employee_detailes


--Ques.9. Write a query to fetch only the first name(string before space) from the FullName 
--column of the EmployeeDetails table.


select * from Employee_detailes
select SUBSTRING(full_name,1,CHARINDEX('',full_name))
from Employee_detailes;


---Ques.10. Write an SQL query to uppercase the name of the employee and lowercase the city values.

select UPPER(full_name),LOWER(city) from Employee_detailes


--ASSIGMENT 4

--Ques.1. Write an SQL query to find the count of the total occurrences of a particular character – 
--‘n’ in the FullName field.

select full_name, len(full_name),len(REPLACE(full_name,'n','')) from Employee_detailes;

--Ques.2. Write an SQL query to update the employee names by removing leading and trailing spaces.

update Employee_detailes
set full_name = LTRIM(RTRIM(full_name));

select * from Employee_detailes

--Ques.3. Fetch all the employees who are not working on any project.

select empID from employeesalary where project is null;


--Ques.4. Write an SQL query to fetch employee names having a salary greater than or equal to 
--5000 and less than or equal to 10000.

select Full_name from Employee_detailes where emp_id in (select empID  from employeesalary where salary between  5000 and 10000);

--Ques.5. Write an SQL query to find the current date-time.

select GETDATE();

--Ques.6. Write an SQL query to fetch all the Employee details from the EmployeeDetails table who joined in the Year 2020.

select * from Employee_detailes where dateofjoining between '2020/01/01'AND '2020/12/31';

SELECT *
FROM Employee_detailes
WHERE YEAR(dateofjoining) = 2020;

--Ques.7. Write an SQL query to fetch all employee records from the EmployeeDetails table 
--who have a salary record in the EmployeeSalary table.

select *from Employee_detailes
where exists (select * from employeesalary where Employee_detailes.emp_id = employeesalary.empID);

--Ques.8. Write an SQL query to fetch the project-wise count of employees sorted by project’s count in descending order.
select * from Employee_detailes
select project,count(empID)empproject from employeesalary group by project order by empproject desc;

--Ques.9. Write a query to fetch employee names and salary records. Display the employee details even if the salary record 
--is not present for the employee.

select Employee_detailes.full_name,employeesalary.salary
from Employee_detailes
left join employeesalary on Employee_detailes.emp_id = employeesalary.salary;













