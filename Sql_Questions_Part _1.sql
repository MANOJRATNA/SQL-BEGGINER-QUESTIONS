select * from EMP

select * from DEPT

--1.	Write a Query to display name of the employee.

select e.ENAME --1
from EMP e

--2.	Write a Query to display ename and salary of all employee.

select e.ENAME,e.SAL --2
from EMP e

--3.	Write a Query to display department name and its location for all the department

select d.DNAME, d.LOC  --3
from DEPT d
--4.	Write a Query to display name, salary, commission and date of joining of every employee

select e.ENAME,e.SAL, e.COMM  --4
from EMP e

--5.	Write a Query to display employee name, his designation and his manager’s employee number.

select e.ENAME, e.JOB, e.MGR, e.EMPNO  --5
from EMP e

--6.	Write a Query to display employee name and his department number.

select e.ENAME, e.DEPTNO  --6
from EMP e

--7.	Write a Query to display all the details of each and every employee of the company.

select e.EMPNO,d.DEPTNO,e.ENAME,d.DNAME, e.JOB, 
e.HIREDATE,e.SAL,e.COMM,d.LOC                     --7
from EMP e, DEPT d

--8.	Write a Query to display all the details of department present in company.

select *
from DEPT d   --8

/*9.	Write a Query to display employee name, his employee number, 
his salary and also his annual salary for every employee.*/

select e.SAL*12 Annualsalary
from EMP e                        ---9

/*10.	Write a Query to display employee name,
his employee number and salary with the hike of 30% for every employee.*/

select e.EMPNO, e.ENAME,e.SAL*1.3  "30% hike"     --10
from EMP e


select * from EMP


select * from DEPT

/*11.	Write  a Query to display the details of employee in the following format:-
       A] Employee x earns a monthly salary of rupees. Y.
       B] Employee x earns a monthly salary of rupees. Y and annual salary of rupee z.
       C] The department x bearing department number y is located in z */


	   select e.ename X , e.sal  Y 
	   from emp e

	   select e.ename x, e.sal  y, e.sal*12 z
	   from emp e

	   select d.DNAME x, d.DEPTNO y, d.LOC z
	   from DEPT d


	   /*12.	Write a Query to display name of the employee with annual salary with a 
	   monthly bonus of 200 and provide suitable alias name.*/

	   select e.ENAME, e.SAL*12 annual_salary, e.sal+200  Bonus
	   from emp e



	   --13.	 Write a Query to display name, salary along with annual
	   --salary of employee with yearly bonus of 1000.


	   select e.ENAME, e.SAL*12 Annual_salary, e.SAL*12+1000 yearly_bonus
	   from EMP e


	  /* 14.	Write a Query to select all the salary of employee of the 
	  salary is greater than 1500.*/


	  select e.ENAME,e.SAL
	  from EMP e
	  where e.SAL>1500


	  /*15.	Write a Query to display employee name, his hire date, his salary
	  and annual salary
	  only if his annual salary greater than 10000.*/

	  select e.ENAME,e.HIREDATE,e.SAL,e.SAL,e.SAL*12 ANNUAL_SALARY
	  from EMP e
	  where e.SAL>10000

	  /*16.	Write a Query to display all the details of 
	  employee if the department number is 20.*/

	  select e.EMPNO,d.DEPTNO,e.ENAME,e.HIREDATE,d.DNAME,d.LOC,e.COMM,e.JOB,e.SAL
	  from EMP e, DEPT d
	  where d.DEPTNO = 20

	  /*17.	Write a Query to display all the details of the 
	  employee if designation is Manager.*/

	  select e.EMPNO,d.DEPTNO,e.ENAME,e.HIREDATE,d.DNAME,d.LOC,e.COMM,e.JOB,e.SAL
	  from EMP e, DEPT d
	  where e.JOB = 'manager'

	  /*18.	Write a Query to display all the details of employee only 
	  if they were hired after the year 1995.*/

	  select e.DEPTNO, e.EMPNO, d.DEPTNO,e.ENAME,d.DNAME,e.JOB,e.MGR,e.SAL,e.HIREDATE,d.LOC
	  from EMP e , DEPT d
	  where e.HIREDATE>1995

	  /*19.	Write a Query to display all the details of employee 
	  only if his commission is greater than his salary.*/


select e.EMPNO,e.DEPTNO,e.ENAME,e.JOB,e.MGR,e.COMM,e.SAL,d.DNAME,d.LOC
from EMP e, DEPT d
where e.COMM>e.SAL

select distinct * from EMP
inner join DEPT on EMP.DEPTNO = DEPT.DEPTNO 
where loc in
(select distinct loc from DEPT)
where LOC in 'new york' 


select * from EMP
where DEPTNO in
(select DEPTNO from DEPT)

select * from (select ENAME,EMP.EMPNO from EMP )emp_card

select ENAME from (select ENAME,EMP.EMPNO from EMP )emp_card

/*45.	List all the employee whose name is having letter ‘L’ as second character.*/

select *
from EMP 
where ENAME like '_L%'

/*44.	List all the employee whose name starts with ‘S’.*/

select * 
from EMP
where ENAME like 'S%'

/*43.	Write a Query to display all the employee’s whose name is 
having ‘R’ as the second last character.*/


select *
from EMP
where ENAME like '%s_'

/*20.	Write a Query to display all the details 
of employee only if his designation is clerk.*/

select *
from EMP
where JOB = 'Clerk'

/*21.	Write a Query to display depart name, depart number 
for all the department which is located in BOSTON.*/

select d.DEPTNO,d.DNAME
from DEPT d
where loc = 'boston'

/*22.	Write a Query to display all the details of employee
only if he belongs to depart number 10 and salary is greater than 2000*/

select * 
from EMP e, DEPT d
where SAL>2000 and d.DEPTNO=10

/* 23.	Write a Query to display Ename, salary, annual salary with the hike of
25% only if he is a clerk and his date of hire is after 16th of June 1982*/

select distinct e.ENAME,e.SAL,e.SAL*12 [annual_salary],e.SAL*1.25 '25% Hike'
from EMP e , DEPT d
where e.JOB = 'clerk' and e.HIREDATE>'1982-06-16' 

/*24.	Write a Query to display all the details of employee only if 
annual salary is greater than15000 and his commission is greater than his salary.*/

select *
from EMP e
where e.SAL*12>15000 and e.COMM>e.SAL


/*25.	Write a Query to display all the details of department only if department 
number is 10 or name of department is RESEARCH.*/

select *
from DEPT d
where d.DEPTNO = '10' and d.DNAME = 'research'

/*26. Write a Query to display employee name and his employee number 
and his hired date and salary with reduction of 20% only if his salary
is greater than 2500 of his department number is 10.*/

select distinct e.EMPNO,e.ENAME,e.HIREDATE,
case when e.SAL>2500 then e.SAL*0.8 else e.SAL end 'reduction'
from EMP e, DEPT d
where d.DEPTNO =10 


/*27.	Write a Query to display all the details of employee, if they have
joined the company before 1985 or his salary is greater than 2500.*/

select *
from EMP e
where e.HIREDATE<1985 and e.SAL>2500

/*28.	Write a Query to display all the details of employee who belongs
to department number is 10 or 20 and salary greater than 2000.*/

select distinct *
from EMP e
where DEPTNO =10 and e.SAL>2000 or DEPTNO = 20 and e.SAL>2000

/*29.	Write a Query to display all the details of employee
if he is working as a salesman 
or analyst and department number either 10 or 20 and salary should be greater than 2000.*/

select distinct *
from EMP e
where JOB IN ('SALESMAN','ANALYST')and DEPTNO IN ( 10 , 20) and e.SAL>2000

/*30.	Write a Query to display all the details of 
employee who is working as SALESMAN or ANALYST.*/

select *
from EMP e
where e.JOB = 'analyst' and e.JOB = 'salesman'

/*73.	List the employees whose salary not in the range of 1000 to 2000 in 
depart no 10, 20, 30 except all salesman.*/

select distinct *
from EMP 
where SAL not between 1000 and 2000 and deptno in (10,20,30)
and job!= 'salesman' 

/*72.	List the employee who are not working as manager and clerk in 
--depart no 10 and 20 with salary in the range of 1000 to 3000.*/

select distinct *
from EMP
where JOB not in ( 'manager','clerk') and DEPTNO in (10,20) and SAL between 1000 and  3000 


/*56.	List all the employees except 
those who are working in department number 10 and 20.*/

select distinct *
from EMP
where DEPTNO not in (10,20)

/*43.	Write a Query to display all the employee’s whose name
is having ‘R’ as the second last character.*/

select distinct *
from EMP
where ENAME like '%r_'

/* 75.	Write a Query to display all the employees whose job has string ‘MAN’ in it.*/

select distinct *
from EMP
where JOB like '&MAN'


/*69.	Write a Query to display all the employees having ‘E’ as the last but 
one character in employee name but salary having atleast 4 character.*/

select *
from EMP
where ENAME like '%E_' and SAL = 

/*68.	Write a Query to display all the employee 
who are clerk and analyst with salary greater than 1000.*/

SELECT * 
from EMP
where JOB = 'ANALYST' 'CLERK' and SAL>1000

/*67.	Write a Query to display all the manager whose annual salary is ending with 0.*/
select distinct  e.SAL,e.SAL*12 [annual salary]
from EMP e
where JOB = 'manager'and SAL like '%0'

/*66.	Write a Query to display all the employee who are 
getting some comm with their designation is neither manager nor analyst.*/

select distinct *
from EMP e
where e.COMM>0 and e.JOB not in  ('manager''analyst')


/*37.	Write a Query to select a name which begins with ‘A’.*/

select *
from EMP
where ENAME like 'A%'

/*38.	Write a Query to select a name which begins with ‘A’ and ends with ‘A’.	*/

select *
from EMP
where ENAME like '%A' and ENAME like 'A%'
select ascii('jj')

select ename , len (ename) from EMP

select ename + '	 , good morning		' [greetings] from EMP e

/*40.	Write a Query to select the name which starts with ‘M’.*/

select *
from EMP
where ENAME like 'M%'

/*42.	Write a Query to select name which is having substring NA atleast twice*/

select *
from EMP
where ENAME like '%NA%'

/*41.	Write a Query to match name to select string which is having substring MAD.*/

select *
from EMP
where ENAME like '%MAD%'


/*46.	List all the employee whose name is having atleast 2 L’s in it.*/

SELECT *
FROM EMP
WHERE ENAME LIKE '%L%L%'

/*48.	List all the employee whose name is having letter ‘R’ in the 3rd position.*/

SELECT *
FROM EMP
WHERE ENAME LIKE '___R%'

/*49.	List all the employee who are having exactly 5 character in their jobs*/

SELECT *
FROM EMP
WHERE LEN(JOB) = 5


/*51.	List the employee whose comm is NULL.*/

SELECT *
FROM EMP
WHERE COMM IS NULL

/* 51.	List the employee whose comm is NULL.*/

SELECT *
FROM EMP
WHERE MGR IS NULL

/* 53.	List all the salesman in department number 30.*/

SELECT * 
FROM EMP
WHERE DEPTNO = 30


/*54.	List all the salesman in department number 30 and
having salary greater than 5000.*/

SELECT *
FROM EMP
WHERE DEPTNO = 30 AND SAL = 5000



/* 55.	List all the employees whose name starts with ‘S’ or ‘A’.*/

SELECT *
FROM EMP
WHERE ENAME LIKE 'S%' OR ENAME LIKE '%A' 

/*56.	List all the employees except those who are working in department number 10 and 20.*/

SELECT *
FROM EMP 
WHERE DEPTNO NOT IN (10,20) 

/*57.	List all the employees whose name doesn’t start with ‘S’.*/

SELECT *
FROM EMP
WHERE ENAME NOT LIKE 'S%'


/* 58.	List all the employees who are having reporting manager in department 10.*/


/* 194.	Write a Query to obtain total salary of an employee, 
where total salary is (Monthly sal + Incentives).*/

SELECT * 
FROM EMP E
WHERE = SAL+COMM 

/* 193.	Write a Query to display all the details of employee,
who are hired in alternative weeks starting Monday.*/




WITH CTE_JOBDETAILS 
AS (SELECT E.EMPNO,E.ENAME,E.DEPTNO,D.DNAME FROM EMP E, DEPT D)
SELECT DISTINCT * FROM CTE_JOBDETAILS
WHERE DEPTNO = 20 AND DNAME = 'RESEARCH'

/* 61.	Write a Query to display who are having _(underscore) 
as second character in their name*/

SELECT * 
FROM EMP
WHERE ENAME LIKE '_'

/* 63.	Write a Query to display all the employee who are getting 2500
and excess salaries’ in department number 20*/

SELECT * 
FROM EMP
WHERE SAL>2500 AND DEPTNO = 20 

/* 64.	Write a Query to display all the manager working in depart number 20 and 30.
*/

SELECT  E.MGR
FROM EMP E
WHERE DEPTNO IN (20,30) 

/* 71.	Write a Query to display all the employees who are joined in Feb.*/

SELECT * 
FROM EMP
WHERE HIREDATE BETWEEN 'JANUARY' AND  'MARCH'

/* SELECT CUSTOMERS WHERE JOB IS CLERK AND NAME START WITH S*/

SELECT *
FROM EMP
WHERE JOB = 'ANALYST' AND ENAME LIKE 'S%'

SELECT * 
FROM EMP

