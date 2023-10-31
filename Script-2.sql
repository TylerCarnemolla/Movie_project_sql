DROP TABLE IF EXISTS movies CASCADE;
DROP TABLE IF EXISTS concessions CASCADE;
DROP TABLE IF EXISTS tickets CASCADE;
DROP TABLE IF EXISTS customer CASCADE;

create table customer(
customer_id SERIAL primary key,
first_name VARCHAR (100),
last_name VARCHAR (100),
zip_code VARCHAR (50)
);

create table tickets(
ticket_id SERIAL primary key,
amount numeric (8,2),
order_date DATE default CURRENT_DATE,
customer_id INTEGER,
movie_name VARCHAR,
foreign key (customer_id) references customer (customer_id)
);

create table concessions(
concession_cost numeric (8,2),
order_id SERIAL primary key,
customer_id INTEGER,
foreign key (customer_id) references customer (customer_id)
);

create table movies(
movie_id SERIAL primary key,
movie_title VARCHAR (50),
movie_rating VARCHAR (6),
lead_actor VARCHAR (40),
movie_release VARCHAR (40)
);




insert into customer(customer_id, first_name, last_name, zip_code)
values (1, 'Douglas' , 'Adams', '97604');

insert into customer(customer_id, first_name, last_name, zip_code)
values (2, 'Ronald','Murry', '98531');

insert into customer(customer_id, first_name, last_name, zip_code)
values (3, 'Thomas', 'Thompson', '26453');

insert into customer(customer_id, first_name, last_name, zip_code)
values (4, 'Angela', 'Rodney', '46521');


insert into tickets (ticket_id, amount, movie_name )
values (100, 10.99, 'agust nombre');

insert into tickets (ticket_id, amount, movie_name )
values (101, 15.99, 'Sepultera');

insert into tickets (ticket_id, amount, movie_name )
values (102, 45.99, 'What now?');

insert into tickets (ticket_id, amount, movie_name )
values (103, 25.99, 'Days Gone');


insert into concessions (concession_cost, order_id)
values (13.99, 200);

insert into concessions (concession_cost, order_id)
values (19.00, 201);

insert into concessions (concession_cost, order_id)
values (50.50, 202);

insert into concessions (concession_cost, order_id)
values (21.99, 203);


insert into movies(movie_id, movie_title, movie_rating, lead_actor, movie_release)
values (3331, 'agusta nombre', 'R', 'Danial Rodrigo', '05/16/2023');

insert into movies(movie_id, movie_title, movie_rating, lead_actor, movie_release)
values (3332, 'Sepultera', 'R', 'August Weider', '06/10/2023');

insert into movies(movie_id, movie_title, movie_rating, lead_actor, movie_release)
values (3333, 'What now?', 'PG-13', 'Jarred Taylor', '06/10/2023');

insert into movies(movie_id, movie_title, movie_rating, lead_actor, movie_release)
values (3334, 'Days Gone', 'PG-13', 'Abigail Troust', '06/21/2023');

select * from customer
