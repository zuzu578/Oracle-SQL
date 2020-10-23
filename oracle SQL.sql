select * from employees;
/*사번 이름 전화번호 */
select EMPLOYEE_ID,EMP_NAME,PHONE_NUMBER from employees;
select * from person;
insert into person values('james','m','5222553','pyeongtaek');
desc person;
insert into person(name,mobile) values ('ww','555566666');

/*지금까지한 작업을 저장해줌*/
/*데이터 유실을 방지하기위함 (commit)*/
commit;

delete from person;
rollback;
update person set gender = 'f' where name = 'joh';
update person  set CITY = 'cheonan' where name ='joh';
update person set gender = 'm' where name = 'ww';
update person set NAME = 'smith' where name ='james';
update person set gender = 'm' where name = 'ww';
update person set CITY = 'busan' where name = 'ww';
/*성별이 m 인사람만 읽기 */

select * from person where gender = 'm';
/*도시가 천안인 사람만 읽어들이기 */

select * from person where CITY ='cheonan';

/*성별이 m인사람의 이름과 도시 */
select name,CITY from person where gender = 'm';
/*john이름 삭제 */
delete from person where name = 'john';
