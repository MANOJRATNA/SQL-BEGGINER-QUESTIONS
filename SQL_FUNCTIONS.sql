--FUNCTIONS

/* 

len()
ltrim()
rtrim()
ascii()


*/


select ascii('e')

select char (101) 

select ename , len (ename) from EMP

select ename + ltrim ('	 , good morning		') [greetings] from EMP e

select ename + rtrim ('	 , good morning		') [greetings] from EMP e

select len('	 , good morning		'), 
len (ltrim('	 , good morning		')),
len (rtrim('	 , good morning		')),
len (ltrim(rtrim(('	 , good morning		'))))
'greetings' from EMP e


select distinct UPPER (ENAME  +'	 WORKING AS A 	'+ JOB + ' AND MY EMPLOYEE NO IS ' 
+ CAST(EMPNO AS VARCHAR (10)) + ' AND MY HIRE DATE IS ' + CAST( HIREDATE AS VARCHAR(10) ) + ' AND MY COMISSION IS ' 
+CAST( COMM AS VARCHAR (10)) + ' AND MY DEPARTMENT NO '+ CAST( D.DEPTNO AS VARCHAR (10)) + ' AND MY LOCATION IS ' +CAST( D.LOC AS VARCHAR (10)) )
from EMP e, DEPT d


ALLEN  WORKING AS A  SALESMAN AND MY EMPLOYEE NO IS 1002 AND MY HIRE DATE IS FEB 22 202 AND MY COMISSION IS 300.00 AND MY DEPARTMENT NO 10 AND MY LOCATION IS NEW YORK





SELECT * FROM EMP

SELECT * FROM DEPT





SELECT * FROM EMP
SELECT DISTINCT E1.EMPNO [EMPLOYEE ID],
				E1.ENAME [EMPLOYEE NAME],
				E2.ENAME [MANAGER NAME]
FROM EMP E1 
INNER JOIN EMP E2 ON E1.MGR = E2.EMPNO





