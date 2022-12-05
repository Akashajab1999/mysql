USE CLASSICMODELS;
/* IN operator */

/* THE IN operator allows you to determine if a value matches any value in a list of values .*/
/*the following example returns null because the value of the left side of the IN oerator is null;*/
select null in (1,2,3);    /*null*/
select 0 in (1,2,3,null);   /*null*/
select null in (1,2,3,null); /*null*/

/* the following example uses the IN operator to find the offices located in the USA and France*/

select 
officeCode ,city,phone,country
from offices 
where country in('USA' ,'France');

/*same result using OR operator*/
select officeCode,city,phone,country
from offices where country= 'USA' or country='France';


/*MYSQL NOT IN 
THE NOT IN OPERATOR RETURNS 1 IF THE VALUE DOESN'T EQUAL ANY VALUE IN THE LIST .OTHERWISE ,IT RETURNS 0;*/
SELECT 1 NOT IN (1,2,3);  /*0*/
SELECT 0 NOT IN (1,2,3); /*1*/
SELECT NULL NOT IN (1,2,3); /*NULL*/

/* THE FOLLOWING EXAMPLE USES THE NOT IN OPERATOR TO FIND THE OFFICES THAT DO NOT LOCATE IN FRANCE AND THE USA;*/
SELECT
officeCode,city,phone,country
from 
offices
where country not in ('USA','France')
order by city;


/*MYSQL BETWEEN
THE BEETWEEN OPERATOR IS A LOGICAL OPERATOR THAT SPECIFIES WHETHER A VALUE IS IN A RANGE OR NOT .

THE FOLLOWING STATEMENT RETURNS 1 BECAUSE 15 IS BETWEEN 10 AND 20;*/
SELECT 15 between 10 AND 20;   /*1*/

/* THE FOLLOWING EXAMPLE RETURNS 0 BECAUSE 15 IS NOT BETWEEN 20 AND 30*/
SELECT 15 between 20 AND 30;    /*0*/


/* NOT BETWEEN 
THE FOLLOWING STTEMENT RETURNS 0 BECAUSE 15 IS NOT BETWEEN 10 AND 20 IS NOT TRUE */
SELECT 15 NOT between 10 AND 20;

/*MySQL BETWEEN with number examples
The following example uses the BETWEEN operator to find products whose buy prices between 90 and 100:*/

SELECT productCode,productName,buyPrice
from products
where buyPrice between 90 and 100;

/*This query uses the greater than or equal (>=) and less than or equal ( <= ) operators instead of the BETWEEN operator to get the same result:*/
select productCode,productName,buyPrice 
from products
where buyPrice >=90 AND buyPrice <=100;

/*To find the products whose buy prices are not between $20 and $100, you use the NOT BETWEEN operator as follows:*/

select productName,productCode,buyPrice
from products
where buyPrice not between 20 and 100;

/*You can rewrite the query above using the less than (<), greater than (>), and the logical operator (AND) like this:*/
select productName,productCode,buyPrice 
from products
where buyPrice <20 or buyPrice >100;


/*BETWEEN operator with dates example*/
/*To check if a value is between a date range, you should explicitly cast the value to the DATE type.

For example, the following statement returns the orders with the required dates between 01/01/2003 to 01/31/2003:*/
select orderNumber,requiredDate,status
from orders
where requiredDate between cast('2003-01-01' as date ) and cast('2003-01-31' as date);

/*In this example, we use the CAST() to cast the literal string '2003-01-01' into a DATE value:

CAST('2003-01-01' AS DATE)*/
