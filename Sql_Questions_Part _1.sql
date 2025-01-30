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

--9.	Write a Query to display employee name, his employee number, his salary and also his annual salary for every employee.

select e.SAL*12 Annualsalary
from EMP e                        ---9

--10.	Write a Query to display employee name, his employee number and salary with the hike of 30% for every employee.

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


	  /*15.	Write a Query to display employee name, his hire date, his salary and annual salary
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







