/*

 TEXT Functions: String Manipulations

    **ONLY USED FOR THE DISPLAY OPTION, DOES NOT MODIFY THE TABLE**

    1. Concatenation Operator:==>  || double pipeline

    2. Concat(Value1, Value2):

    3. Upper(Value): returns all upper

    4. Lower(Value): returns all lower

    5. INITCAP(Value):This will print the first letter of the word in CAPITAL

    6. Length(): returns the length of characters

    7. Replace(ColumName, oldValue, newValue):after passing column name, pass old, then new value

    8. Substr(ColumName, Beg index, End index): creates beginning index and then provide
 the ending index **ENDING INDEX WILL BE EXCLUDED**

    9. Trim(value):it remove "white spaces"

 */

--Concatenation Operator:==>  ||
SELECT EMAIL || '@gmail.com' FROM EMPLOYEES;
--the above query from employees email their domain is missing and by using the "concatenations" we can display it
SELECT EMAIL FROM EMPLOYEES; -- BY OPENING the emails again with concat it will show the original display

SELECT FIRST_NAME ||' '|| LAST_NAME FROM EMPLOYEES;
-- the above query displaying how to concat both first and last names together and by adding ||' '|| it give space between them

-----------------------------------------------------------------------------------------------------------------

--Concat(Value1, Value2):
SELECT CONCAT(EMAIL,'@gmail.com')FROM EMPLOYEES;

SELECT CONCAT(CONCAT(FIRST_NAME,' '), LAST_NAME) FROM EMPLOYEES;
--WE HAVE TO NEST OUR CONCAT WITH ANOTHER CONCAT TO GET BOTH FIRST AND LAST NAME CONCATENATED


---------------------------------------------------------------------------------------------------------------------

--Upper(Value):

SELECT UPPER(FIRST_NAME) FROM EMPLOYEES;-- THIS WILL MAKE ALL OF THE DATA UPPER CASE


--Lower(Value):

SELECT LOWER(FIRST_NAME) FROM EMPLOYEES;
SELECT LOWER(UPPER(FIRST_NAME)) FROM EMPLOYEES;-- BY NESTING IT TO LOWER


---------------------------------------------------------------------------------------------------------------------
--InitCap(Value): This will allow to make the first letter Capital and the rest lower

SELECT INITCAP(EMAIL) FROM EMPLOYEES;
SELECT EMAIL FROM EMPLOYEES;


---------------------------------------------------------------------------------------------------------------------
-- length(Value):

SELECT LENGTH(FIRST_NAME) FROM EMPLOYEES; -- THIS WILL DISPLAY THE TOTAL FIRST NAMES IN NUMBERS

SELECT FIRST_NAME, LENGTH(FIRST_NAME) FROM EMPLOYEES;-- THIS QUERY WILL SHOW ME BOTH NAMES AND TOTAL NUMBERS


---------------------------------------------------------------------------------------------------------------------
--Replace(ColumName, oldValue, newValue):

SELECT FIRST_NAME FROM EMPLOYEES;
SELECT REPLACE(FIRST_NAME, 'e', 'a') FROM EMPLOYEES;
-- the above query first choose the column name ==> FIRST_NAME the old value letter & then new value letter


---------------------------------------------------------------------------------------------------------------------

--Substr(ColumName, Beg index, End index):

SELECT FIRST_NAME FROM EMPLOYEES;

SELECT SUBSTR(FIRST_NAME, 0, 1) FROM EMPLOYEES;-- THIS QUERY WILL SHOW ME FIRST LETTER

--if we add FIRST_NAME, before subStr it will provide the full name with subStr on the side
SELECT FIRST_NAME , SUBSTR(FIRST_NAME, 0, 1) FROM EMPLOYEES;


SELECT SUBSTR(FIRST_NAME, 0, 1) || SUBSTR(LAST_NAME,0,1) FROM EMPLOYEES;


---------------------------------------------------------------------------------------------------------------------


--Trim(value):it removes "white spaces"
SELECT FIRST_NAME FROM EMPLOYEES;
SELECT   CONCAT(  '       ' ,  FIRST_NAME) FROM EMPLOYEES;-- will display first name with spaces

SELECT   TRIM(   CONCAT(  '       ' ,  FIRST_NAME) )FROM EMPLOYEES;-- will display first name without spaces



















