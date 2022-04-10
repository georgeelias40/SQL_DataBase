/*
 Like Statement: partial search

    starts with: Chars%
    ends with : %Chars
    contains: %Chars%

 SYNTAX:
    select Column(s) from Table(s) where Value Like WildCard
 */

--*** LIKE STATEMENT: IS CASE SENSITIVE !! ***


--Starts with:
 SELECT * FROM COUNTRIES;
SELECT * FROM COUNTRIES WHERE COUNTRY_NAME LIKE 'A%';-- WILD CHARS MUST BE IN SINGLE 'QUOTE'
--if you want to count it by num than name
SELECT  COUNT (COUNTRY_NAME) FROM COUNTRIES WHERE COUNTRY_NAME LIKE 'A%'; -- WILL GIVE YOU COUNT BY NUMBER INSTEAD OF NAME


-- Ends with:
SELECT * FROM COUNTRIES WHERE COUNTRY_NAME LIKE '%a';

--Starts with & ends with:                           use and
SELECT * FROM COUNTRIES WHERE COUNTRY_NAME LIKE 'A%' AND COUNTRY_NAME LIKE '%a';


--Contains:
SELECT * FROM COUNTRIES WHERE COUNTRY_NAME LIKE '%a%';

--SELECT COUNTRY_NAME FROM COUNTRIES WHERE COUNTRY_NAME LIKE '%a%'; ==> this is if you want specific columns
























