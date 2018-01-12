--1
select max(salary) 최고임금, 
       min(salary) 최저임금,
      (max(salary)-min(salary))"최고임금-최저임금"
from employees

--2
select to_char((max(hire_date)),'"20"yy"년" mm"월" dd"일"')
from employees

--3
select  department_id,
        avg(salary),
        max(salary),min(salary)
from employees
group by department_id
order by avg(salary) desc,max(salary) desc,min(salary) ;

--4
select  job_id,
        avg(salary),
        max(salary),
        min(salary)
from employees
group by job_id
order by avg(salary) desc,max(salary) desc,min(salary) ;
--5
select to_char((min(hire_date)),'"20"yy"년" mm"월" dd"일"')
from employees

--6
select department_id,avg(salary),min(salary)
from employees
where avg(salary)-min(salary) <2000
order by avg(salary)-min(salary)            ///////// 다시풀기

--7
select job_id, max(salary)-min(salary) "최고-최저"
from employees
group by job_id
order by max(salary)-min(salary) desc;