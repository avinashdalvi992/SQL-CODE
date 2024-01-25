-- create database name as order_stores_data;

create database order_store_data;

use order_store_data;

---Q2) Create two Table names as Orders_Table and Stores_Table

create table orders_table(
order_date date,
Regin varchar (50),
Rep varchar (50),
order_LIE varchar (50),
units int,
unit_cost decimal (10,2),
total_price decimal (10,2),
order_ID int
);

alter table orders_table
add units int;

select * from orders_table

create table stores_table(
store_ID int,
store_type varchar(50),
assortment varchar (50),
compitiondistance varchar(50),
month varchar(50),
year int,
promointerval varchar(50),

);


---Q3) Insert All records present here in the Orders_table and Stores_Table.

insert into orders_table
VALUES ('1-6-21','East','Aruna','Pencil',95	,1.99,189.05,1),
('1-23-21','Central','Kivell','Eraser',50,19.99,999.50,2),
('2-9-21','Central','Ganesh','null',36,4.99,179.64,5),
('2-26-21','Central','Payal','null',27,19.99,539.73,4),
('3-15-21','West','Sorvino','null',56,2.99,167.44,5),
('4-1-21','East','Hitesh','Pencil',60,4.99,299.40,6),
('4-18-21','Central','Akshita','null',75,1.99,149.25,7),
('5-5-21','Central','Ruchika','Books',90,4.99,449.10,8),
('5-22-21','West','Surbhi','null',32, 1.99,63.68,9),
('6-8-21','East','Jones','Suitcase',60,8.99,539.40,10)

select * from orders_table


INSERT INTO stores_table
VALUES (1,'c',34,1270,9,2008,'JAN'),
(2,'a',16,570,11,2007,'Feb'),
(3,'A',47,14130,12,2006,'Mar'),
(4,'c',43,620,9,2009,'NULL'),
(5,'a',27,29910,4,2015,'May'),
(6,'a',13,310,12,2013,'June'),
(7,'a',41,24000,4,2013,'NULL'),	
(8,'A',14,7520,10,2014,'Aug'),
(9,'A',24,2030,8,2000,'NULL'),
(10,'A',14,3160,9,2009,'Oct')
	
SELECT * FROM stores_table



--Q3) Make Order_Id  Column as Primary Key.

---ORDER_ID INT PRIMARY KEY ALLREDY EXIST

---Q4) Add one Column Name  as Store_Names and insert the records given above in Stores table.

ALTER TABLE stores_table ADD STORE_NAMES VARCHAR(50);

SELECT * FROM stores_table

UPDATE stores_table SET STORE_NAMES = 'HARDWARE' WHERE store_ID =1
UPDATE stores_table SET STORE_NAMES = 'Electrics' WHERE store_ID =2
UPDATE stores_table SET STORE_NAMES = 'Fibers' WHERE store_ID =3
UPDATE stores_table SET STORE_NAMES= 'Elastics' WHERE store_ID =4
UPDATE stores_table SET STORE_NAMES = 'Books' WHERE store_ID =5
UPDATE stores_table SET STORE_NAMES = 'Shoes'WHERE store_ID=6
UPDATE stores_table SET STORE_NAMES = 'Clothes' WHERE store_ID =7 
UPDATE stores_table SET STORE_NAMES = 'Scraps' WHERE store_ID=8
UPDATE stores_table SET STORE_NAMES = 'CAR' WHERE store_ID=9
UPDATE stores_table SET STORE_NAMES = 'Bikes'WHERE store_ID=10

SELECT * FROM stores_table

--Q5) Make Stored_Id as a Foreign Key with reference too Orders_Table

ALTER TABLE ORDERS_TABLE 
RENAME 'ORDER_ID' TO 'FOREIGN KEY'


--Q6) Update the missing  records in the Order_item Column in Order_table missing records are given in this sheet

UPDATE orders_table SET order_LIE ='Compass' WHERE units =3;
UPDATE orders_table SET order_LIE ='Torch' WHERE units=4;
UPDATE orders_table SET order_LIE ='Phone' WHERE units=5;
UPDATE orders_table SET order_LIE ='Laptop' WHERE units=8;
UPDATE orders_table SET order_LIE = 'BOOK' WHERE units=9;

SELECT * FROM orders_table

--Q7) Update the missing records in the PromoInterval Column in Stores Table.
SELECT * FROM stores_table

UPDATE stores_table SET promointerval ='APRIL' WHERE store_ID =4;
UPDATE stores_table SET promointerval ='JULY' WHERE store_ID =7;
UPDATE stores_table SET promointerval ='SEP' WHERE store_ID =9;

SELECT * FROM stores_table

---Q8) Rename the column name  of Assortment to Store_Nos in Stores_Table.

select * from stores_table
EXEC sp_rename 'STORES_TABLE.assortment','STORE_NeOS','COLUMN';

 ---Q9) Rename the column name  of Order_Item to Item_name  and Rep Column as Customers_name in Orders_Table.

 SELECT * FROM orders_table

 exec sp_rename 'orders_table.order_LIE','Order_name','column';

 select * from orders_table

 exec sp_rename 'orders_table.rep','Customers_name','column';

 select * from orders_table

 ----Q10) Sort the Unit Cost of Orders_table in Descding order and Total column in Ascending order.

select * from orders_table
order by unit_cost desc;


SELECT * FROM ORDERS_TABLE
ORDER BY ORDER_DATE , UNITS , TOTAL_PRICE , ORDER_ID ASC;

---Q11) Convert Customers_name to Cus_Name  and find how many  Cus_Name in each region

exec sp_rename 'orders_table.customers_name','Cus_Name','column';

select regin,
COUNT(*) AS 'cus_Name' from orders_table group by regin;

---Q12) Find the sum of Total_Price Column and Unit Cost  in Orders_Table 

SELECT * FROM orders_table;
SELECT SUM(TOTAL_PRICE) AS TOTAL_PRICE, SUM(UNIT_COST) AS UNIT_COST FROM orders_table;

SELECT * FROM orders_table
SELECT SUM(TOTAL_PRICE) AS TOTAL_PRICE FROM orders_table


---Q13) Show me OrderDate  , Unit Cost  , StoreType and Year in One table and names that table as Order_Stores_Table.

CREATE TABLE ORDER_STORES_TABLE(
ORDERDATE DATE,
UNIT_COST DECIMAL(10,2),
STORETYPE VARCHAR(50)
);

SELECT * FROM ORDER_STORES_TABLE

---Q14)  Give me ORDER_NAME and Region whose UNITS is 4 , 5, 6 ,9

SELECT * FROM orders_table;

SELECT order_name, REGIN FROM orders_table WHERE units in (4,5,6,9)

SELECT * FROM orders_table

SELECT order_ID,* FROM orders_table WHERE units in (4,5,6,9)



---Q14)  Give me ORDER_NAME and Region whose UNITS is 4 , 5, 6 ,9

select * from orders_table
select order_name ,regin from orders_table where units in (4,5,6,9)

select * from orders_table
select order_Id,*from orders_table where units in (3,5,7,8,9)

select * from orders_table
select order_Id,* from orders_table where units in (3,5)

---Q15) Show me year  whose ComptetitionDistance is 29910  , 310 , 3160

select * from stores_table

select year from stores_table where compitiondistance = 29910;
select year from stores_table where compitiondistance = 310;
select year from stores_table where compitiondistance =3160;

--Q16)  Give me that Item_name whose  unit_cost is greater than 95 and less than 27

select * from orders_table
select Order_name from orders_table where unit_cost between 27 and 95;
select order_name from orders_table where unit_cost between 50 and 95;

---Q17) Rename the CompetitionDistance as CD and find the total CD in Stores_Table.

select * from stores_table

exec sp_rename 'stores_table.compitiondistance','CD','column';

select * from stores_table

---Q18) What is the Total Count of Stores_Type and CD columns

select * from stores_table

alter table stores_table alter column cd  int

select * from  stores_table
select  SUM(CD) as cd from stores_table
select sum(STORE_NOS) from [dbo].[stores_table]

--Q19) Apply the Cross Join in  Orders_Table and Stores_Table.

select * from orders_table
select * from stores_table

select store_id
from stores_table
cross join orders_table;


--Q20) DROP both the databases

DROP database order_stores_data;