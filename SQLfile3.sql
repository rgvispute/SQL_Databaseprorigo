--SQL Assignment
create table empp(
firstname varchar(20),
lastname varchar(20),
empid int primary key,
DepartmentId int,
)
select * from empp
alter table empp add salary int
alter table empp add deptid int
alter table empp add managerid int
alter table empp add salary int
alter table empp add city varchar(20)
alter table empp add Deptname varchar(20)
alter  table empp drop column Deptname

create table dept(
deptid int primary key,
dname varchar(20)
)
select * from dept
insert into dept values(1,'HR')
insert into dept values(2,'Maneger')
insert into dept values(3,'Employee')
insert into dept values(4,'Sales')
insert into dept values(5,'CEO')

 update  empp set deptid=1 where empid  in(1,4,5,6,7,8)
 update  empp set deptid=2 where empid  in(9,10)
 update  empp set deptid=3 where empid  in(4,6,11)
 update  empp set deptid=4 where empid  in(12,13,14,15)
 update  empp set deptid=5 where empid  in(18)

 select p.firstname,p.empid,p.DepartmentId,p.salary,d.deptid,d.dname
from empp p
inner join dept d on d.deptid=p.deptid
where d.dname='sales'
 
 select p.firstname,d.dname
 from empp p
 inner join dept d on d.deptid=p.deptid
 where d.dname='hr'

 select p.firstname,d.dname,p.salary
 from empp p
 inner join dept d on d.deptid=p.deptid
 where d.dname='hr'
order by (salary)

select p.firstname,d.dname,p.salary
 from empp p
 inner join dept d on d.deptid=p.deptid
 where d.dname='hr'
order by (salary) desc

select p.firstname,d.dname,p.salary
 from empp p
 inner join dept d on d.deptid=p.deptid
 where d.dname='sales'
 order by (firstname)

 select p.firstname,d.dname,p.salary
 from empp p
 inner join dept d on d.deptid=p.deptid
 select firstname,salary from empp
 order by firstname,salary
--having clause
select deptid,count(deptid) as id from dept
group by deptid
having count(deptid) >2

select dname, count(deptid) as empcount from dept
group by dname
having dname in('hr','sales')
order by count(deptid)


 --union
 create table cust(
 id int,
 name varchar(20),
 city varchar(20),
 country varchar(20),
 )
 select * from cust

 create table supplier(
 id int,
 name varchar(20),
 city varchar(20),
 country varchar(20),
 )
 select * from supplier
  insert  into cust values(1,'Rahul','pune','india')
  insert  into cust values(2,'Sanket','Mumbai','india')
  insert  into cust values(3,'Praful','nashik','india')
  insert  into cust values(4,'Akshay','Bangloar','india')
  insert  into cust values(5,'Sachin','pune','india')

  insert  into supplier values(1,'Rashmi','pune','india')
  insert  into supplier values(2,'Vrushali','Mumbai','india')
  insert  into supplier values(3,'Mayuri','pune','uk')
  insert  into supplier values(4,'Sneha','Mumbai','india')
  insert  into supplier values(5,'Priya','pune','uk')

  select city,country from cust where city='pune'
union 
select city,country from supplier where city='Mumbai'

--Sql buildin in function

select SUBSTRING(firstname,0,3) as tname from empp where empid=7
select CONCAT(firstname,' ',lastname,' ',city)as info from empp 
select firstname,LEN(firstname)as length from empp
select UPPER (lastname) as surname from empp
select lower (lastname) as surname from empp
select ROUND(salary,4)as dot from empp
select CAST(salary as numeric(10,2)) as cast from empp
select REVERSE(firstname),lower(firstname) as ulta from empp
select REVERSE(firstname) as ulta from empp
select REPLACE(firstname,'rucha','ruchi')from empp
select REPLACE(firstname,'r','g')from empp
select REPLACE(salary,40000,12000)from empp
select RTRIM(firstname)from empp
select RANK(firstname)from empp

SELECT salary, RANK () OVER (ORDER BY salary) AS Rank_no FROM empp;
update empp set salary=23900.99 where empid=1
insert into empp values('Rucha','Vispute',18,101,50000,'hr','pune')
update  empp set salary=30000 where empid=1
insert into empp values('Abha','kale',17,102,40000,'hr','mumbai')
insert into empp values('baumty','Vispute',16,104,45000,'sales','pune')
insert into empp values('shruti','bhamare',14,101,80000,'manager','pune')
insert into empp values('Ulka','Vispute',15,106,10000,'hr','pune')
insert into empp values('Akshay','thombre',13,104,20000,'hr','mumbai')
insert into empp values('shubham','dusane',12,103,20000,'sales','mumbai')
insert into empp values('vijay','Vispute',11,102,30000,'emp','pune')
insert into empp values('Raju','pute',10,101,45000,'emp','nashik')
update empp set managerid=1 where empid in(2,4,6)
update empp set managerid=11 where empid in(7,8,9,10)

update empp set managerid=4 where empid in(12)
select e1.firstname as empname, e2.firstname as managername
from empp e1,empp e2
where e1.managerid=e2.empid

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

select firstname from empp

 select firstname,deptname from empp where deptname in('sales')
 select * from empp
 select firstname,salary from empp where salary>=35000
 select firstname as Name_Of_Emp ,lastname,city from empp where city in('mumbai','pune')
 select * from empp where salary between 25000 and 35000
 select * from empp where firstname like 'r%'
 select * from empp where firstname like '%a'
 select  count(distinct city) from empp 
 select  distinct city from empp 
 select firstname,lastname,city,deptname from empp where deptname not in('hr','sales')




 --join Assignment
 --find student id,year who enroll for different course with their year
 create table tblstudy(
 stuid varchar(5),
 courseid varchar(5),
 year int
 )
 insert into tblstudy values('s1','c1',2016)
 insert into tblstudy values('s2','c2',2017)
 insert into tblstudy values('s1','c2',2017)
 select * from tblstudy
 select s1.stuid,s1.courseid,s1.year
 from tblstudy s1,tblstudy s2
 where s1.stuid=s2.stuid and s1.courseid<>s2.courseid

 create table customer1(
 cid int primary key,
 cname varchar(20),
 city varchar(20),
 grade int,
 salemanid int,
 )

 create table saleman(
 salemanid int primary key,
 name varchar(20),
 city varchar(20),
 comision int,
 )

 create table orderss(
 oid int,
 purchaseamt int,
 cid int,
 salemanid int
 )
