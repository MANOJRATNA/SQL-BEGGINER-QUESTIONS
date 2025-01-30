--AGGREGEATE FUNCTIONS

select * from EMP

select * from DEPT

select char(250) Manoj

select count('manoj') ,e.DEPTNO, e.SAL
from EMP e
where sal<1000
group by e.DEPTNO, e.SAL


select min(sal)
from EMP e

select max(sal)
from EMP e

select AVG(sal)
from EMP e

select count(sal)"no of employees"  from EMP e 
select min(sal)[no of employees]  from EMP e 
select max(sal)'no of employees'  from EMP e 
select avg(sal) avg_employees  from EMP e 

select SAL from EMP
group by SAL
having AVG(sal)>2

select SAL 
from EMP
where SAL>1999
group by SAL
having AVG(sal)>2


select * from sys.tables

select name from sys.tables



select 45+45,2+3,1+1,1-2,3*3 joel_drinker

select 'select * from ' +name from sys.tables 





