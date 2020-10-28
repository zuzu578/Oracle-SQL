select * from human;
alter table person add id number;
truncate table human;
create sequence seq_id start with 1 increment by 1;
drop sequence seq_id ;
select SEQ_ID.nextval from dual;
insert into human values('john',.'m','55554444','cheonan',seq_id.nextval);
insert into human values('jane','f','53515511','jeju',seq_id.nextval);


--인덱스--
--검색을 빨리하기--
select * from employees;
--인덱스 가 많으면 좋은점은 선택이(검색속도)  빨라짐--
--단점은 insert delete update 가 느려짐 --
select distinct prod_id from sales wher   e cust_id = 387 and prod_id = 30 and employee_id=167;
create index idx_cpe on sales(cust_id,prod_id,employee_id);

select count
from employees;
--group by절을 쓸때는 집계함수를 반드시 써야한다 --
select department_id,sum(salary)
from employees
group by department_id
order by sum(salary),department_id;
select salary 
from employees
where salary>3000
order by salary;
select period,region, sum(loan_jan_amt)totl_jan
from kor_loan_status
where period = '201311'
and  region ='서울'
group by period , region
having sum(loan_jan_amt)>10000
order by region;

--조인(동등 조인)--
select a.employee_id , a.emp_name,a.department_id,b.department_name
from employees a,
departments b
where a.department_id = b.department_id;
--세미조인(in을 사용)--
select department_id,department_name
from departments a
where a.department_id in(select b.department_id
                            from employees b
                            where b.salary > 3000);
                            
create  view view1 as
select a.employee_id, a.emp_name, a.department_id,
b.department_name
from employees a,
departments b
where a.department_id =b.department_id;

select *
from view1;