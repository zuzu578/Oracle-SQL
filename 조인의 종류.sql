

/*
관계형 데이터베이스 이해하기 
1) 조인 개념 : 관계형 데이터베이스 에서의 기본적인 방법중하나로 , 테이블사이를 연결해주는 방법이다 
inner 조인과 outter조인이 있음 

inner join 
1)동등조인 :where 절에서 등호 연산자를 사용해 두개이상의 테이블이나 뷰를 연결 
2)세미조인 :서브쿼리에 존재하는 데이터만 추출 하는 방법 
3)안티조인 : 서브쿼리에 없는 데이터만 추출하는 방법 
4)셀프조인 : 서로다른 두테이블이 아닌 동일한 테이블을 사용해 조인하는 방법을 말함 
*/
select a.employee_id,a.emp_name,a.department_id, b.department_name
from employees a,
    departments b
where a.department_id = b.department_id;
/*==>위의 쿼리문을 보듯이 where 절에서 명시해준 조건(조인조건)에따라 두 개이상 테이블, 뷰를의
하나로 겹치는 것을 inner조인의 동등조인이라고 한다.

*/
select department_id, department_name
from departments a
where exists(select * from employees b);
/*=>세미조인 ==> 서브쿼리내에 존재하는 데이터를 추출하는 방법 
*/
select a.employee_id, a.emp_name, a.department_id, b.department_name
from employees a,
departments b
where a.department_id = b.department_id
and a.department_id not in( select department_id 
                            from departments
                            where manager_id is null);
/*==> 안티조인 ==> 서브쿼리 내에 없는 데이터를 메인쿼리에서 추출하는 방법 
==> 세미조인과 반대 로 not in , not exist 를 사용 
/*셀프조인 
*/
select a.employee_id, a.emp_name,b.employee_id ,b.emp_name,a.department_id
    from employees a,
    employees b
    where a.employee_id < b.employee_id
    and a.department_id = b.department_id
    and a.department_id = 20;
/*동일한 테이블을 사용해서 조인하는 방법 

    




