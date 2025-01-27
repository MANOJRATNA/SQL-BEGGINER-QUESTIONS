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

select e.SAL*12 "Annual salary"
from EMP e                        ---9

--10.	Write a Query to display employee name, his employee number and salary with the hike of 30% for every employee.

select e.EMPNO, e.ENAME,e.SAL*1.3  "30% hike"     --10
from EMP e



