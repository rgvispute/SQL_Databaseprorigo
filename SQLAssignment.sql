create table customer(
Id int primary key,
name varchar(20),
city varchar(20),
country varchar(20),
postalcode int,
)

insert into customer values(1,'Ajay','Berlin','US',121110)
insert into customer values(2,'Jhon','Berlin','US',121110)
insert into customer values(3,'Donna','Oslo','Germany',121111)
insert into customer values(4,'Horn','Berlin','US',121110)
insert into customer values(5,'Lily','London','UK',121110)
insert into customer values(1,'Vijay','Pune','India',101211)
insert into customer values(9,'ummi','oslo','Norway',101211)
insert into customer values(8,'jay','London','Germany',' ')
select * from customer
--Write a statement that will select the City column from the Customers table
select city from customer

--Select all the different values from the Country column in the Customers table
select distinct country from customer

--Select all records where the City column has the value "London
select name,city from customer where city in('london')


--Use the NOT keyword to select all records where City is NOT "Berlin".
select * from customer where not city='Berlin'

--Select all records where the CustomerID column has the value 23
select  id from customer where id=3

--Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.
select name,city,postalcode from customer where city in('Berlin')

--Select all records where the City column has the value 'Berlin' or 'London'.
select name,city,postalcode from customer where city in('Berlin','london')

--Select all records from the Customers table, sort the result alphabetically by the column City.
select city from customer
order by city

--Select all records from the Customers table, sort the result reversed alphabetically by the column City.
select city from customer
order by city desc

--Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City
select city,country from customer
order by city,country

--Select all records from the Customers where the PostalCode column is empty.
select*from customer where postalcode is null

--Select all records from the Customers where the PostalCode column is NOT empty
select*from customer where postalcode is not null

--Delete all the records from the Customers table where the Country value is 'Norway'
delete from customer where country='norway'

--Select all records where the value of the City column starts with the letter "a".
select * from customer where city like'B%'

--Select all records where the value of the City column ends with the letter "a".
select *  from customer  where city  like'%n'

--Select all records where the value of the City column contains the letter "a".
select *  from customer  where city  like'%r%'

--Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
select *  from customer  where city  like'L____n'

--Select all records where the value of the City column does NOT start with the letter "a"
select *  from customer  where city   not like'l%'

--Select all records where the second letter of the City is an "a".
select *  from customer  where city    like'_e'

--Select all records where the first letter of the City is an "a" or a "c" or an "s".
select * from customer where city   like'[b-L]%'

--Select all records where the first letter of the City starts with anything from an "a" to an "f".
select * from customer where city   like'[b-L]%'

--Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
select * from customer where city not  like'[b-L]%'

--Use the IN operator to select all the records where the Country is either "Norway" or "France".
select Id,Name,city,country from customer where Country in('uk','germany')

--Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
select Id,Name,city,country from customer where Country  not in('germany','us')

--When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
select city,postalcode as pno from customer 

--When displaying the Customers table, refer to the table as Consumers instead of Customers
select * from customer as cunsumer 

--List the number of customers in each country.
SELECT  COUNT(id)  as c,  Country   FROM Customer 
GROUP BY Country
ORDER BY COUNT(ID) ;

--List the number of customers in each country, ordered by the country with the most customers first.
SELECT  COUNT(id)  as c,  Country   FROM Customer 
GROUP BY Country
ORDER BY COUNT(ID) desc;

--Write the correct SQL statement to create a new database called testDB.
create database testTB

--Write the correct SQL statement to delete a database named testDB
drop database testTB

--40 & 41
create table person2(
id int primary key,
name varchar(20),
)
select * from person2
--Add a column of type DATE called Birthday in Persons table
alter table person2 add birthday date

--Delete the column Birthday from the Persons table
alter table person2 drop column birthday

create table prod(
pid int primary key,
pname varchar(20),
price int)

select * from prod

insert into prod values(1,'toy',10)
insert into prod values(2,'boy',10)
insert into prod values(3,'yak',20)
insert into prod values(4,'mouse',200)
insert into prod values(5,'pop',50)
insert into prod values(7,'ball',20)
insert into prod values(8,'bat',70)
insert into prod values(9,'carom',80)
insert into prod values(10,'toy',60)

--Use the MIN function to select the record with the smallest value of the Price column.
select min(price) as minprice from prod

--Use an SQL function to select the record with the highest value of the Price column.
select max(price) as minprice from prod

--select min(price) as minprice from prod
select price,pname from prod where price=20

--Use an SQL function to calculate the average price of all products.
select avg(price) as Average from prod

--Use an SQL function to calculate the sum of all the Price column values in the Products table
select sum(price) as Addition from prod

--Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
select * from prod where price between 10 and 60

--Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
select * from prod where price  not between 10 and 60

--Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
order by pname
select * from prod where pname   between 'boy' and 'mouse'


