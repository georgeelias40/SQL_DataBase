/*
 Where Clause: used as the filter option
    select column(s) from Table(s) where Conditions;
        Operators:
            >, <, >=, <=, =, != , or, and
 */

SELECT * FROM EMPLOYEES WHERE SALARY < 5000;-- LESS THAN
SELECT  * FROM EMPLOYEES WHERE SALARY <5000 AND MANAGER_ID = 114;

 /**
   Between statement: user for specifying the range of the condition
            value between LOWEST and HIGHEST;
  */

SELECT  * FROM DEPARTMENTS WHERE LOCATION_ID BETWEEN 1800 AND 2400;

SELECT * FROM EMPLOYEES WHERE SALARY BETWEEN  3500 AND 5000;


/*
 IN Statement: Used for specifying the range of the condition.
 when its specified "in" RANGE must in parenthesis EXAMPLE==> IN (10,20,30)
 */


SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID IN (60, 30, 110);

SELECT  * FROM COUNTRIES WHERE REGION_ID IN (1, 4);


































































