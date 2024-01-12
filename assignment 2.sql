use mavenmovies;
--- identify the primary key and foreign keys in mavenmovies
primary key show null and unique values in a table, while foreign key 
is primary key for another table and it establish a link between tables;

use mavenmovies;
show tables;

--- 1.list detail of all actor
select * from actor;

--- 2.list all customer information from database
select * from customer;

 --- 3. list diffrent country 
 select * from country;
select distinct country from country ;


 --- 4.display all actice customer
 select * from customer;
 select first_name, last_name active from customer where active = 1;
 
 --- 5.list of all rental ids for customer with id 1
select * from rental;
select * from customer;
select rental_id from rental where rental_id =(select first_name from customer where customer_id =1); 

--- 6.display all the films whose rental duration is greater than 5
select * from film;
select title, rental_duration from film where rental_duration > 5;

--- 7.list the total number of films whose replacement cost is greater than $15 and less than $20.
select * from film;
select title, replacement_cost from film where replacement_cost between 15 and 20 ; 

--- 8.find the number of film whose rental rate is less than $1.
select * from film;
select count(title) as no_of_film,rental_rate from film where rental_rate < 1 group by rental_rate;

--- 9.display the count of unique first name of the actoractor
select* from actor;
select count(distinct first_name)  from actor ;

--- 10.Display the first 10 record from the customer table
select * from customer;
select * from customer limit 10;

--- 11.display the first three record from the customer table whose first name starts with a
select * from customer;
select * from customer where first_name like 'b%' limit 3;

--- 12.display the name of first 5 movies which are rated as G
select * from film;
select * from film where rating ='G' limit 5;

--- 13.find all customer whose first name start with a
select * from customer;
select * from customer where first_name like 'a%';

--- 14.find all customer whose first nae ends wth a
select * from customer;
select * from customer where first_name like '%a';

--- 15.display the name of first 4 cities which starts and ends with a
select * from city ;
select * from city where city like 'a%a' limit 4;

--- 16.find all customer whose first name have NI in any position 
select * from customer;
select * from customer where first_name like '%NI%' ; 

--- 17.find all customer whose first name have r in the second position 
select * from customer ;
select * from customer where first_name like '_r%' ;

--- 18.find all customer whose first name starts with a and are at least 5 characters in length;
select * from customer ;
select * from  customer where first_name like 'a%' and  length(first_name)>= 5;

--- 20.find all customer whose first name starts with a and ends with o
select * from customer;
select * from customer where first_name like 'a%o';

--- 21.get the film with pg and pg-13 rating using in operatorfilm
select * from film;
select * from film where rating in ('PG' , 'PG-13');

--- 22.get the films where length between 50 and 100 using between operator
select * from film;
select * from film where length between 50 and 100;

--- 23.get the top 50 actors using limit operator
select * from actor;
select * from actor limit 50;

--- 24.get the distinct film ids from inventory table
select * from inventory;
select distinct film_id from inventory;

--- 

--- 