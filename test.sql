#char varchar
#date and time
#float and double
#decimal

create table test(
name varchar(50),
sex char,
age decimal(5,2),
days_lived double,
dob date,
born_time time,
operation datetime
);

insert into test(name,sex,age,born_time,dob,operation)
values('sharoon','m',12,'12:45:00','2000-06-25','2000-06-25 12:45'),
       ('mn','f',15, curtime(), curdate(),now()); #to show current date and time

#delete
delete from test where name='mn';

#date
select name ,dob, dayname(dob) from test;
select name ,dob, day(dob) from test;

select name,date_format(dob, '%m-%D-%y at %h-%m') from test; #format of date and time

#date difference
select name,datediff(now(),dob) from test;

#date add
select name,dob, date_add(dob, interval 1 month) from test;
desc test;

#timestamp with alter
alter table test
add created timestamp default now();

select * from test;

