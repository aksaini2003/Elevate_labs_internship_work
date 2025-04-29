use elevate_labs;
create table online_sales(orderid varchar(10),amount int,profit int, quantity int,category varchar(20),sub_category varchar(25),paymentmode varchar(15));
-- lets import the data into this table 
SET GLOBAL local_infile = 1;
LOAD DATA LOCAL INFILE '/C:/Users/aashi/Desktop/elevate_labs/task6(day9)/Details.csv'
INTO TABLE online_sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- lets check that the file is imported or not
select * from online_sales; 
-- we have successfully imported the csv file for the operations
select * from online_orders;
-- lets convert the orderdate 's datatype to datetime
alter table online_orders modify column `Order Date` datetime;
ALTER TABLE online_orders
ADD COLUMN `orderdate` DATETIME;
UPDATE online_orders
SET `orderdate` = STR_TO_DATE(`Order Date`, '%d-%m-%Y');
-- we have successfully converted to the datetime data type 
-- lets extract the month from the date column
-- lets remove the original column
alter table online_orders drop `Order Date`;
select * from online_orders;

-- lets extract the month from the datetime datetype 
select month(orderdate) as months from online_orders;


-- lets group the data on the basis of the year and month
SELECT 
  YEAR(orderdate) AS order_year,
  MONTH(orderdate) AS order_month,
  COUNT(*) AS total_orders
FROM online_orders
GROUP BY order_year, order_month;

-- lets get the total revenue 
select sum(amount) as total_revenue from online_sales; 

#lets count the total number of rows from 
select count(distinct(orderid)) as total_orders from online_sales;
select * from online_sales;
select * from online_orders;

-- lets use order by for sorting by names 
select * from online_orders order by CustomerName;



-- lets get the data of a limited time period 
select * from online_orders where orderdate between '2018-07-01' and '2018-09-30';