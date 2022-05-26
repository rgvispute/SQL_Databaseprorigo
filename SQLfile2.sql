create Table Course(
Id int ,
Name varchar(20),
)
select * from Course


alter table Course add constraint pk_Course primary key (Id)

sp_help Course1

create Table Course1(
Id int ,
Name varchar(20),
)

alter table Course1 add constraint pk_Course1 primary key (Id)
select * from Course1
alter table Course1 alter column Id int not null
alter table Course1 add City varchar(40)
alter table Course1 add gity varchar(40)
alter table Course1 drop column gity 