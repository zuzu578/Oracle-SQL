create table person(
    name varchar(20) not null,
    gender char(1),
    mobile varchar(15)not null,
    city varchar(12)
    );
    insert into person(name,mobile,gender)
    values('Jane','5553232','M');

    select name,name,gender from person; 
    delete from person;
    update person
    set gender='F'
    where name = 'Jane';























