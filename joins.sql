--joins

--inner joins




--right joins

select * from EMP

right join DEPT on EMP.DEPTNO=DEPT.DEPTNO

--left joins


select * from EMP

left join DEPT on EMP.DEPTNO=DEPT.DEPTNO


--113

select distinct dname from EMP e
inner join DEPT d on e.DEPTNO=d.DEPTNO
where JOB='salesman'