/*
 Order By Statement: Used for sorting the result
        ASCENDING order : ASC   ==> small to large
        DESCENDING order : DESC  ==> large to small

    ***  when using "ORDER BY"  IT'S by DEFAULT  ALWAYS SORTED IN A  "ASCENDING ORDER" ****
 */

 SELECT * FROM COUNTRIES  ORDER BY REGION_ID;--by default sorted in ascending order
 SELECT * FROM COUNTRIES ORDER BY REGION_ID ASC;
-- if we use the "WHERE" MUST BEFORE "ORDER BY"
-- "ORDER BY" MUST be always at the end !!
SELECT * FROM COUNTRIES WHERE REGION_ID < 5 ORDER BY REGION_ID ASC;
SELECT * FROM COUNTRIES ORDER BY REGION_ID DESC;