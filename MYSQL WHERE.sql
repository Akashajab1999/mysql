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