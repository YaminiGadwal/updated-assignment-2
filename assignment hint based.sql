--- BASIC AGGREGATE FUNCTION

 --- retrieve the total number of rentals made in skilla database.
 
 select* from rental;
select count(rental_id) as total_no_of_rental from rental;

--- find the average rental duration (in days) of movies rented from sakilla database

select * from film;
select avg (rental_duration) from film;

--- list the first name and last name of the customer in upper case 

select upper(first_name) as firstname, upper(last_name)  as lastname from customer;

--- extract the month from the rental date and display it along side rental id

select * from rental;
select rental_id,month(rental_date) from rental;

--- retrieve the count of rentals for each customer (dispaly customer id and count of rentals)

select * from rental;
select customer_id, count(rental_id) from rental group by customer_id;

--- find the total revenue generatd by each store

select * from payment;
select* from store ;

select sum(amount) ,p.staff_id , s.store_id from payment p join store s on p.staff_id = s.manager_staff_id group by staff_id;

--- display the title of the movies ,customer first name and last name who rented

select f.title, c.first_name, c.last_name  from film f join inventory i on f.film_id = i.film_id
join rental r on i.inventory_id = r.inventory_id
join customer c on r.customer_id = r.customer_id ;

--- retrieve the names of all actors who have appeared in the film 'gone with thw wind'
select* from film ;
select a.first_name, f.title,f.description from film f join film_actor fa on f.film_id=fa.film_id
join actor a on fa.actor_id=a.actor_id where description = "Gone with the Wind" ;


--- determine the total no of rentals for each category of movies
select * from film_category;
select * from film;
select * from rental;

select count(rental_id),fa.category_id  from film_category fa join film f on fa.film_id=f.film_id
join rental r on f.last_update=r.last_update group by fa.category_id;


--- find the average rental rate of movies in each language

select avg(rental_rate), l.language_id from film f join language l on f.language_id=l.language_id group by l.language_id;


--- rerieve thr customer names along with the total amount they have spent on rentals

select * from customer;
select * from payment;
select * from rental;
select r.rental_id,c.first_name, c.last_name ,sum(amount) as total_amount from customer c join payment p on c.customer_id=p.customer_id
join rental r on p.customer_id=r.customer_id group by r.rental_id;
 

--- list the title of movies rented by each customer in a particular city 
select * from customer;
select * from rental;
select * from address;

select c.customer_id, f.title ,district from customer c join address a on c.last_update=a.last_update
join city ci on a.city_id=ci.city_id
join rental r on ci.last_update=r.last_update
join inventory i on r.inventory_id=i.inventory_id
join film f on i.film_id= f.film_id
group by a.city_id;


--- display the top 5 rented movies along with the number of times they have been rented
select * from film;
select * from inventory;
select * from rental;

select count(rental_id), title from film f join inventory i on f.film_id = i.film_id
join rental r on i.inventory_id=r.inventory_id
group by rental_id limit 5;


 --- determine the customers who have rented movies from both stores( storeid 1 and storeid 2)
 
 select first_name, count(rental_id) as count_of_rental ,i.store_id from customer c join rental r on c.customer_id=r.customer_id
 join inventory i on r.inventory_id=i.inventory_id
 group by rental_id ;
 


