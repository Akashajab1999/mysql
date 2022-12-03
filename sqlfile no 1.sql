use classicmodels;
show tables
/* The SELECT statement allows you to select data from one or more tables. To write a SELECT statement in MySQL, you use this syntax:*/
/*SELECT select_list FROM table_name;*/
/*MySQL SELECT statement to retrieve data from a single column example*/
select lastname from employees;
/*data from multiple columns example*/
select lastname,firstname,jobtitle from employees;
/* MySQL SELECT statement to retrieve data from all columns example*/
select employeenumber,lastname,firstname,extension,email,officecode,reportsto,jobtitle from employees;
/* we use (*) which is shorthand for all collumns*/
select * from employees;
select 1+1;       /*addition*/
select now();      /*it return the current date and time*/
select concat('akash',' ','ajab');      /* The CONCAT() function accepts one or more strings and concatenates them into a single string.*/
select * from dual;   /*its a dummy table*/
select concat('akash',' ','ajab') as name;       /*we gives the alise name to colum*/
select concat('akash',' ','ajab') as 'full name';

/*ORDER BY clause*/
select contactlastname from customers order by contactlastname;   /*ORDER BY clause to sort the customers by their last names in ascending order*/
select contactlastname from customers order by contactlastname desc; /*desending order*/
select contactlastname,contactfirstname from customers order by contactlastname desc,contactfirstname asc;
SELECT 
    orderNumber, 
    orderlinenumber, 
    quantityOrdered * priceEach
FROM
    orderdetails
ORDER BY 
   quantityOrdered * priceEach DESC;

