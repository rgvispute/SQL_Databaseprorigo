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
insert into customer values(6,'ummi','oslo','Norway',101211)
insert into customer values(7,'jay','London','Germany',' ')
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

--Delete all the records from the Customers table where the Country value is 'Norway'.
