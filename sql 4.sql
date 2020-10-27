--jobs 테이블의 직위중 job+history에없는 직위를 찾아서
-- 그 직위 이름들을 조회
select *from jobs;
select *from job_history;
select job_title
from jobs a 
where a.job_id not in (select job_id from job_history b);





--매출액 1500 이상 기록한 직원의 이름
--select prod_id , cust_name , channel_id ,employee_id 
--from sales a , customers b 
--where a.cust_id = b.cust_id
 --and b.cust_gender='F';

--select job_id from jobs
--minus
--select job_id from job_history;
--select a.job_id , b.job_title
--from job_history a ,jobs b
--where a.job_id = b.job_id;
--select  cust_name , prod_name,emp_name,channel_desc,quantity_sold,amount_sold
--from sales a, products b, customers c ,channels d, employees e
--where a.prod_id = b.prod_id
--and a.cust_id =c.cust_id
--and a.channel_id = d.channel_id
--and a.employee_id= e.employee_id;
--sales 테이블 --
--select * from sales;
--channels테이블--
--select * from employees;
--a테이블과 b테이블에서 출력할 컬럼들을 선택--
--select a.cust_id,a.prod_id,b.emp_name,a.channel_id
--위의 선택을 a와 b테이블에서 출력한다--
--from sales a, employees b
--두 테이블 의 공통되는 부분을 조건을 주어서 두테이블을 합친다--
--where a.EMPLOYEE_ID= b.employee_id;


--select  cust_name , prod_name,emp_name,channel_desc,quantity_sold,amount_sold
--from sales a, products b, customers c ,channels d, employees e
--where a.prod_id = b.prod_id
--and a.cust_id =c.cust_id
--and a.channel_id = d.channel_id
--and a.employee_id= e.employee_id;
--sales, products join 하여 cust_id ,prod disc, employee_id ,channel_id
--select a.cust_id,b.prod_desc,a.employee_id,a.channel_id
--from sales a, products b
--where a.prod_id = b.prod_id;
--조인하는 테이블(연결해주는 테이블)--
--select a.cust_id,prod_id,a.employee_id,b.channel_desc
--from sales a, channels b
--sales 테이블과 channels 테이블에서 공통되는 부분을 찾기 --
--where a.CHANNEL_ID= b.CHANNEL_ID;