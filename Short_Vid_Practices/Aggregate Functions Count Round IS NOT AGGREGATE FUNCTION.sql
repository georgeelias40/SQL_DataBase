/*
 Aggregate Functions:
    Min(): selects the min value from the column
    select min(columName) from TableName;

    Max(): selects the max value form the column
    select max(columName) from TableName;

    Avg(): selects the avg value from the column
    select avg(columName) from TableName;

    Sum(): selects the sum value from the column
    select sum(columName) from TableName;
 ------------------------------------------------------

 count():
    select count(ColumName) from TableName where Condition;

 round():
    select round(avg(columName), 2 ) from TableName;
 */

---------------------------------------------------------------------------------------
/*
 Min(): selects the min value from the column
    select min(columName) from TableName;
 */

SELECT LOCATION_ID FROM DEPARTMENTS;-- JUST AN ORIGINAL QUERY

SELECT MIN(LOCATION_ID ) FROM DEPARTMENTS; -- this will return min number ==> 1400

SELECT * FROM DEPARTMENTS WHERE LOCATION_ID = 1400;-- this will locate the dept name

--                                                 this will give me exact same num 1400 as in line 26
SELECT * FROM DEPARTMENTS WHERE LOCATION_ID = (SELECT MIN(LOCATION_ID ) FROM DEPARTMENTS);

---------------------------------------------------------------------------------------
/*
 Max(): selects the max value form the column
    select max(columName) from TableName;
 */
SELECT MAX(LOCATION_ID) FROM DEPARTMENTS;

SELECT * FROM DEPARTMENTS WHERE LOCATION_ID = 2700;


SELECT * FROM DEPARTMENTS WHERE LOCATION_ID = (SELECT MAX(LOCATION_ID) FROM DEPARTMENTS);


SELECT MAX(SALARY) FROM EMPLOYEES;

SELECT * FROM EMPLOYEES WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES);
SELECT * FROM EMPLOYEES WHERE SALARY = (SELECT MIN(SALARY) FROM EMPLOYEES);
---------------------------------------------------------------------------------------

/*
   Avg(): selects the avg value from the column
    select avg(columName) from TableName;

    round():
    select round(avg(columName), 2 ) from TableName;
 */

SELECT AVG(SALARY) FROM EMPLOYEES;

SELECT ROUND(AVG(SALARY), 2) FROM EMPLOYEES;-- ROUND WILL REDUCE THE AMOUNT OF DECIMALS

---------------------------------------------------------------------------------------
/*
 Sum(): selects the sum value from the column
    select sum(columName) from TableName;
 */

SELECT SUM(SALARY) FROM EMPLOYEES;-- returns the sum of the Values





---------------------------------------------------------------------------------------
/*
  count():
    select count(ColumName) from TableName where Condition;
 */

SELECT * FROM EMPLOYEES WHERE MANAGER_ID = 100;


SELECT COUNT(*) FROM EMPLOYEES WHERE MANAGER_ID = 100;


SELECT COUNT(*) FROM EMPLOYEES WHERE SALARY < 10000;-- number of employees that are making less than 10000

















































