create table Student(
StudentId int,
StudentName varchar(20),
studentAddress varchar(50),
)
alter table Student add City varchar(50)

  sp_rename 'Student.StudentId','Id'

select * from Student
alter table Student add age int
alter table Student add age1 int not null
alter table Student drop column age
select distinct country from Student

select * from Student where Id <> 4
 select Id,StudentName from Student
 select Id,StudentName from Student where Id in(1,2,4)
 select Id,StudentName from Student where Id  not in(6,8,4)
 select Id,StudentName,age1 from Student where Country in('india','UK')
 


sp_help Student

alter table Student add constraint chk_age1 check(age1>=18)
alter table Student drop constraint chk_age1
alter table Student add country varchar(20) default 'india'
alter table Student add constraint default_con default 'india' for country
alter table Student add constraint default_con default 'india' for country


create index index_Student on Student (StudentName,Country);
select * from Student where age1 between 23 and 27
-- and/not/or
select * from Student where Id=3 and city='Pune'
select * from Student where Id=3 or city='Pune'
select * from Student where not Id=8

--like operator
select * from Student where StudentName like 'R%'
select * from Student where StudentName like '%a'
select * from Student where StudentName like '%u%'
select * from Student where StudentName like 'R____'
select * from Student where StudentName like '___a'
select * from Student where StudentName not like 'R%'
select * from Student where StudentName like '%[an]'
select * from Student where StudentName like '%[G-R]'

--null
select * from Student where Id is null
select * from Student where Id is not null

insert into Student values(1,'Ruchita','mumbai','Pune',27,'India')
insert into Student values(2,'Ruchi','mumbai','Pune',31,'UK')
insert into Student values(3,'Gaurav','mumbai','Pune',23,'USA')
insert into Student values('Ulka','mumbai','Pune',40,'India')
insert into Student values(5,'sham','mumbai','Pune',27,'USA')
insert into Student values(6,'ujwala','mumbai','Pune',25,'India')
insert into Student values(7,'shruti','mumbai','Pune',30,'UK')
insert into Student values(8,'Rucha','mumbai','Pune',30,'India')











