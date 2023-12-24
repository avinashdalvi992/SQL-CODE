

create database brand

use brand;

create table ITEM_TABLE(
ITEM_ID INT,	
item_description VARCHAR (300),
vendor_nos INT,
vendor_name VARCHAR (300),
bottle_size INT,
bottle_price DECIMAL (10,2),
);


SELECT * FROM ITEM_TABLE

INSERT INTO ITEM_TABLE
VALUES (1,'Travis Hasse Apple Pie',305,'Mhw Ltd',750,$9.77),
(2,'D aristi Xtabentun',391,'Anchor Distilling (preiss Imports',750,$14.12),
(3,'Hiram Walker Peach Brandy',370,'Pernod Ricard Usa/austin Nichols',1000,$6.50 ),
(4,'Oak Cross Whisky',305,'Mhw Ltd',750,$25.33),
(5,'Uv Red(cherry) Vodka',380,'Phillips Beverage Company',200,$1.97 ),
(6,'Heaven Hill Old Style White Label',259,'Heaven Hill Distilleries Inc',750,$6.37 ),
(7,'Hyde Herbal Liqueur',194,'Fire Tail Brands Llc',750,$5.06 ),
(8,'Dupont Calvados Fine Reserve',403,'Robert Kacher Selections',750,$23.61 );

SELECT * FROM ITEM_TABLE


USE products;

CREATE TABLE product_TABL(
product_id int,
country varchar (50),
product varchar(100),
unit_sold decimal(10,2),
manufacturing_Price decimal(10,2),
sales_price decimal (10,2),
gross_sale decimal (10,2),
sales decimal(10,2),
cogs decimal(10,2),
profit decimal(10,2))
--Date_ DATE,
--);

--SELECT * FROM product_TABL



INSERT INTO product_TABL
VALUES (1,'CANADA',' Carretera ',1618.5,3,20,32370,32370,16185,16185)

select * from product_TABL

DELETE FROM product_TABL
WHERE product_id= 1;

select * from product_TABL

INSERT INTO product_TABL
VALUES (1,'CANADA','Carretera',10,90,49,89,34,45,99)
SELECT * FROM product_TABL

INSERT INTO product_TABL
VALUES (2,'Germany',' Carretera',1321,3.00,20.00,26420.00,26420.00,13210.00,13210.00)
SELECT * FROM product_TABL 
 
INSERT INTO product_TABL
VALUES (3,'France','  Carretera',1233,567,999,999,999.00,765,13210.00)
SELECT * FROM product_TABL 

INSERT INTO product_TABL
VALUES (4,'Germany','Carretera',1333,587,999,999,999.00,768,11210.00),
(5,'Mexico',' Carretera ',1233,687,1099,1099,1199.00,968,13210.00),
(6,'Germany','Carretera',1933,687,1999,1799,14999.00,9698,19210.00);

SELECT * FROM product_TABL

INSERT INTO product_TABL
VALUES (8,'Canada',' Montana ',1333,97,999,999,999.00,768,11210.00)

SELECT * FROM product_TABL

DELETE FROM product_TABL WHERE unit_sold = 10;
DELETE FROM product_TABL WHERE unit_sold = 97;

select * from product_TABL

----5) DROP the table and Create it again.

drop table product_TABL

CREATE TABLE product_TABL(
product_id int,
country varchar (50),
product varchar(100),
unit_sold decimal(10,2),
manufacturing_Price decimal(10,2),
sales_price decimal (10,2),
gross_sale decimal (10,2),
sales decimal(10,2),
cogs decimal(10,2),
profit decimal(10,2),

);


select * from product_TABL

INSERT INTO product_TABL
VALUES (1,'CANADA','Carretera',10,90,49,89,34,45,99),
(2,'Germany',' Carretera',1321,3.00,20.00,26420.00,26420.00,13210.00,13210.00),
(3,'France','  Carretera',1233,567,999,999,999.00,765,13210.00),
(4,'Germany','Carretera',1333,587,999,999,999.00,768,11210.00),
(5,'Mexico',' Carretera ',1233,687,1099,1099,1199.00,968,13210.00),
(6,'Germany','Carretera',1933,687,1999,1799,14999.00,9698,19210.00),
(8,'Canada',' Montana ',1333,97,999,999,999.00,768,11210.00);

select * from product_TABL




-----1) Find the Total Sale Price  and  Gross Sales 

select sum(sales_price) from product_TABL;
select sum(gross_sale) from product_TABL;

select * from product_TABL

-----2) In which year we have got the highest sales

select * from product_TABL

select YEAR From product_TABL where sales =(select MAX(sales) from product_TABL);

sp_rename 'product_TABL.date', 'Year', 'COLUMN';

select * from product_TABL

select YEAR From product_TABL where sales =(select MAX(sales) from product_TABL);

----3)  Which Product having the sales of $ 26420

select product from product_TABL where sales =26420;

carretera 


-----4) Which Countries lies between profit of $ 4,605 to $  22 , 662.00

select profit from product_TABL where profit between 99 and 13210;

99,13210,13210,13210,13210,99,99,99,99,99,

----5) Which Product Id having the sales of $ 24 , 700.00

select * from product_TABL
select product_id from product_TABL where sales_price =999;

3,4,8,


---

use brand

select * from ITEM_TABLE


---1) Find the item_description having the bottle size of 750


select item_description from ITEM_TABLE
where bottle_size =750;

--Travis Hasse Apple Pie
--D aristi Xtabentun
--Oak Cross Whisky
--Heaven Hill Old Style White Label
--Hyde Herbal Liqueur
--Dupont Calvados Fine Reserve

--2) Find the vendor Name having the vendor_nos 305 , 380 , 391

select * from ITEM_TABLE
select vendor_name from ITEM_TABLE
where vendor_nos in(305,380,391) 

--Mhw Ltd
--Anchor Distilling (preiss Imports)
--Mhw Ltd
--Phillips Beverage Company

----3) What is total Bottle_price 

select SUM (bottle_price) AS TOTAL FROM ITEM_TABLE

92.73

----4) Make Primary Key to Item_id

SELECT * FROM ITEM_TABLE

SELECT products PRIMARY_KEY FROM ITEM_TABLE



-----5) Which item id having the bottle_price of BRANDS$ 5.06


SELECT ITEM_id FROM ITEM_TABLE WHERE BOTTLE_PRICE=5.06;
7

---Advance Questions:--

1.Apply INNER  , FULL OUTER , LEFT JOIN types on both the table 

SELECT * FROM ITEM_TABLE
select * from product_TABL

---------FULL OUTER 

SELECT * FROM 
BRAND.ITEM_TABLE
FULL OUTER JOIN 
PRODUCTS.product_TABL
ON IT.ITEM_ID = PT.product_id;


---LEFT JOIN

select * from 
brand.[dbo].[ITEM_TABLE] as IT
left join
products.[dbo].[product_TABL] as PT 
on IT.Item_ID =PT.Product_ID;


- RIGHT JOIN

brand.[dbo].[ITEM_TABLE] as IT
right join 
products[dbo].[product_TABL]as PT
on IT.Item_ID = PT.prodict_ID;

----3) Find the item_description and Product having the gross sales of 13,320.00


select * from product_TABL

select * from products.[dbo].[product_TABL] WHERE gross_sale = 26420.00;


---4)   Split the Item_description Column into Columns Item_desc1 and Item_desc2