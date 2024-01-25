create database student
use student 

create table student_table(
student_id int,
Name Varchar(50),
surname varchar(50),
DOB date,
Gender varchar(50),
Class int,
point int,
check (gender in ('male','female')));

select * from student_table

insert into student_table
values(111,'kishor','god','1991-09-11','male',01,200),
(112 , 'KOMAL' , 'KUMARI' , '1990-01-11', 'FEMALE' , 10 , 405),
(113 , 'ROSHANI' , 'MISHRA' , '1991-01-01', 'FEMALE' , 10 , 200),
(114 , 'YOGESH' , 'KHANA' , '1989-01-01', 'MALE' , 10 , 215),
(115 , 'MADHU' , 'LATA' , '1980-02-20', 'FEMALE' , 10 , 135),
(116 , 'SHIKHA' , 'KUMARI' , '1990-03-28', 'FEMALE' , 10 , 222),
(117 , 'LOKESH' , 'RAJ' , '1989-03-11', 'MALE' , 10 , 223),
(118 , 'JYOTI' , 'MANOJ' , '1983-05-21', 'FEMALE' , 10 , 335),
(119 , 'ASHISH' , 'KUMAR' , '1997-06-01', 'MALE' , 10 , 115),
(120 , 'AHMED' , 'KHAN' , '1990-12-31', 'MALE' , 10 , 150)

select * from student_table

-- Example 1:  List all the records in the student chart
select * from student_table

--Example 2: List the name surname and class of the student in the student table

select name, surname, class from student_table;

--Example 3: List the gender Female (F) records in the student table

select * from student_table where Gender like'female';
;

--Example 4 : List the names of each class in the way of being seen once in the student table

select * from student_table
order by class asc;

 --Example 5: List the students with Female gender and the class 10th in the student table
 select class =10 ,name from student_table where Gender like'female'

 --Example 6: List the names, surnames and classes of the students in the gender ('male','female') in the student table

 select class =10, name, surname,class from student_table where gender in ('male','female');


 --Example 7: List the students name surname and point in the student table
 select * from student_table

 select name,surname,point from student_table

 --Example 9: List the students with the names starting with “A” letter in the student table
 select * from student_table
 select name,surname from student_table where name like'a%';
 select * from student_table where name like'a%';

 --Example 10: List the book names and pages count with number of pages between 50 and 200 in the book table

 select * from student_table
 select	* from student_table where point between 50 and 200;


 --Example 11: List the students with names AMAN  , PREM and AYANA in the student table

 select * from student_table where name in ('komal' , 'roshani' , 'ashish');
 
 --Example 12: List the students with names starting with A D and K in the student table
 select * from student_table where name like '[adk]%';
 select name,surname from student_table where name like '[adk]%';

 --Example 13: List the names surnames classes and genders of males in 9Math or females in 9His in the student table
 SELECT NAME , SURNAME , CLASS , GENDER FROM STUDENT_TABLE
WHERE (CLASS = 9 AND GENDER = 'MALE' AND SUB = 'MATH') OR (CLASS = 9 AND GENDER = 'FEMALE' AND SUB = 'HIS');


--Example 14: List the males whose point are 200 and 405

select * from student_table where point in ('200','405');
select name,surname from student_table where point in ('200','405');

--Example 15: List the students with birth year 1989 in the student table
select * from student_table where DOB ='1989';

 

