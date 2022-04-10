/*
 GROUP BY:  rows that have the
 same values into summary rows, like "find the number of customers in each country".
The GROUP BY statement is often used with aggregate
 functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.

 Having: is a clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.
 */


 SELECT JOB_ID FROM EMPLOYEES GROUP BY JOB_ID;

SELECT JOB_ID, COUNT(*) FROM EMPLOYEES GROUP BY JOB_ID;

SELECT JOB_ID, MAX(SALARY) FROM EMPLOYEES GROUP BY JOB_ID;
SELECT JOB_ID, MIN(SALARY) FROM EMPLOYEES GROUP BY JOB_ID;
SELECT JOB_ID, AVG(SALARY) FROM EMPLOYEES GROUP BY JOB_ID;
SELECT JOB_ID, SUM(SALARY) FROM EMPLOYEES GROUP BY JOB_ID;



--------------------------------------------------------------------------------------------------------------------
--Having:

SELECT JOB_ID, COUNT(*) FROM EMPLOYEES GROUP BY JOB_ID HAVING MAX(SALARY) > 2000;

SELECT JOB_ID, COUNT(*) FROM EMPLOYEES GROUP BY JOB_ID HAVING AVG(SALARY) > 6000;

SELECT JOB_ID, COUNT(*) FROM EMPLOYEES GROUP BY JOB_ID HAVING MIN(SALARY) > 6000;

































