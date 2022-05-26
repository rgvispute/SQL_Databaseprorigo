--SQL Assignment
create table empp(
firstname varchar(20),
lastname varchar(20),
empid int primary key,
DepartmentId int,
)
select * from empp
alter table empp add salary int
alter table empp add Deptname varchar(20)
insert into empp values('Rucha','Vispute',1,101,50000)
insert into empp values('Abha','kale',2,102,40000,'hr')
insert into empp values('baumty','Vispute',3,104,45000,'sales')
insert into empp values('shruti','bhamare',4,101,80000,'manager')
insert into empp values('Ulka','Vispute',5,106,10000,'hr')
insert into empp values('Akshay','thombre',6,104,20000,'hr')
insert into empp values('shubham','dusane',7,103,20000,'sales')
insert into empp values('vijay','Vispute',8,102,30000,'emp')
insert into empp values('Raju','pute',9,101,45000,'emp')

  select empid,salary from empp
   select empid,Deptname from empp where Deptname in('hr','sales')
   select firstname,lastName from empp where empid in(1,2,3,4,5)
    select uppercase (firstname)
	--Aggregate function
	--count sum avg max min

	select count(*) from empp
	select count(distinct Deptname) from empp
	select sum(salary)as sumsalary from empp
	select avg(salary)as avgsalary from empp
	select max(Salary)as maxsalary from empp
	select min(salary)as minsalary from empp

	--group by clause
	select Deptname,count(empid) as empcount from empp
 group by Deptname

 