USE classicmodels;
/*The WHERE clause allows you to specify a search condition for the rows returned by a query. The following shows the syntax of the WHERE clause:

SELECT 
    select_list
FROM
    table_name
WHERE
    search_condition;
    
    
    The search_condition is a combination of one or more expressions using the logical operator AND, OR and NOT.*/
    /*When executing a SELECT statement with a WHERE clause, MySQL evaluates the WHERE clause after the FROM clause and before the SELECT and ORDER BY clauses:
    from>>>where>>>>select<<<<order by*/
    
   /* 1) Using MySQL WHERE clause with equality operator example
The following query uses the WHERE clause to find all employees whose job titles are Sales Rep:*/
    
    
    select 
          lastname,
          firstname,
          jobtitle
    from 
    employees
    where
    jobtitle='sales rep';
    
    /*2) Using MySQL WHERE clause with the AND operator
The following example uses the WHERE clause to find employees whose job titles are Sales Rep and office codes are 1:*/
select 
lastName,firstName,jobtitle,officecode
from
employees
where 
jobtitle='sales rep' and officeCode=1;
    
    /*3) Using MySQL WHERE clause with OR operator
This query finds employees whose job title is Sales Rep or employees who locate the office with office code 1:*/
select 
lastName,firstName,jobTitle,officeCode
from
employees
where
jobtitle='sales rep' or officeCode=1
order by
officeCode,jobtitle;


USE CLASSICMODELS;
/*you can use the FIELD() function to map each order status to a number and sort the result by the result of the FIELD() function:*/
select orderNumber,status
from orders
order by field(status,'in process','on hold','cancelled','resolved','disputed','shipped');

select orderNumber,status
from orders
order by status;

/*WHERE clause with the BETWEEN operator example

The BETWEEN operator returns TRUE if a value is in a range of values:

expression BETWEEN low AND high*/
/*The following query finds employees who locate in offices whose office code is from 1 to 3:*/
select 
firstName,lastName,officeCode
from employees
where
officeCode between 1 and 3
order by officecode;

USE CLASSICMODELS;
SELECT * FROM EMPLOYEES;


/*select the lastname fistname of employees whose employeeNumber is <=1188*/
SELECT lastName,firstname,employeeNumber
from employees
where employeeNumber between 1002 and 1188;

/*WHERE clause with the LIKE operator example
like operrater gives true values which is ends with given command
the following query finds the employees whose last names end with the string 'son':*/
select lastName,firstName
from employees
where lastname like '%son'
order by firstName;

/* return the firstName which is ends with e */
select firstName,lastName from employees where firstName like '%e';


/*WHERE clause with the IN operator example
he IN operator returns TRUE if a value matches any value in a list.
he following example uses the WHERE clause with the IN operator to find employees who locate in the office with office code 1,2,3.*/

select firstName,lastName,officeCode
from employees
where  officeCode in (1,2,3);

select firstName,lastName,officeCode
from employees
where  officeCode in (2,3,4)
order by officeCode;

/*WHERE clause with the IS NULL operator
To check if a value is NULL or not, you use the IS NULL operator, not the equal operator (=). The IS NULL operator returns TRUE if a value is NULL.
The following statement uses the WHERE clause with the IS NULL operator to get the rows with the values in the reportsTo column are NULL:
*/
select lastName,firstName,reportsTo from employees
where reportsTo is null;

/*WHERE clause with comparison operators
The following table shows the comparison operators that you can use to form the expression in the WHERE clause.

Operator	Description
=	Equal to. You can use it with almost any data type.
<> or !=	Not equal to
<	Less than. You typically use it with numeric and date/time data types.
>	Greater than.
<=	Less than or equal to
>=	Greater than or equal to
The following query uses the not equal to (<>) operator to find all employees who are not the Sales Rep:*/

select lastName,firstName,jobTitle from employees where jobTitle <> 'sales Rep';

select lastName,firstName,jobtitle
from employees
where jobtitle <> 'President'
order by firstName;

/*he following query finds employees whose office code is greater than 5:*/
select lastName,firstName,officeCode from employees
where officeCode>5;

/*he following query returns employees with office code less than or equal to 4 (<=4):*/
select lastName,firstName,officeCode 
from employees 
where officeCode <=4;




