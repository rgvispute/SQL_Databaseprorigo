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

sp_help Student

alter table Student add constraint chk_age1 check(age1>=18)
alter table Student add country varchar(20) default 'india'
alter table Student add constraint default_con default 'india' for country
alter table Student add constraint default_con default 'india' for country

create index index_Student on Student (StudentName,Country);


insert into Student value(1,'Ruchita','mumbai','Pune',30,20,'India')
insert into Student value(1,'Ruchita','mumbai','Pune',30,20,'India')










