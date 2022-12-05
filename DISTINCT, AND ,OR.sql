/* distinct return the unique values.it removes the duplictae values.*/
select lastName from employees order by lastName;
/*Bondur
Bondur
Bott
Bow
Castillo
Firrelli
Firrelli
Fixter
Gerard
Hernandez
Jennings
Jones
Kato
King
Marsh
Murphy
Nishi
Patterson
Patterson
Patterson
Thompson
Tseng
Vanauf*/

select distinct lastName from employees order by lastName;
/*Bondur
Bott
Bow
Castillo
Firrelli
Fixter
Gerard
Hernandez
Jennings
Jones
Kato
King
Marsh
Murphy
Nishi
Patterson
Thompson
Tseng
Vanauf*/

/* when multiple null are in the colom .that time distinct return only one time null.*/
select state from customers;
select distinct state from customers;

/*distinct with multiple columns*/
select distinct state,city
from customers
where state is not null
order by state,city;

select  state,city
from customers
where state is not null
order by state,city;

/*AND Operator*/
select 1 and 1;

select 1 and 0;

select 0 and 1;

select 0 and 0;
select 0 and null;
select  null and null;
select 1 and null;
select null and 1;

/* AND operator example*/
select customername ,country,state
from customers where country ='USA' AND state= 'CA';


/* FOR example the following query return the customers who locate in california,usa and have credit limit greter than 100k*/

select customerName ,country,state,creditlimit
from customers
where country = 'USA' AND STATE ='CA' AND CREDITLIMIT>100000;


/* MYSQL OR OPERATOR */
SELECT 1 OR 1,1 OR 0,0 OR 1;     /*1
SELECT 0 OR 0;     /*0
SELECT 1 OR NULL,0 OR NULL,NULL OR NULL;
SELECT 1=1 OR 1/0;    /*1

SELECT 1 OR 0 AND 0;   /*1
SELECT (1 OR 0 )AND 0;  /*0

/*CUSTOMERS LOCATED IN THE USA OR FRANCE;*/
select customerName,country
from customers
where country = 'USA' OR country= 'France';

/* the folowing example uses the or operator to select the customers who locate in the usa or france and have a credit limit greter than 100000;*/
select customername,country,creditlimit
from customers
where (country= 'USA' or country = 'France')and creditlimit>100000;

select customername,country,creditlimit
from customers
where country= 'USA' or country = 'France'and creditlimit>100000;

