drop schema if exists db_car_classified_view cascade;

create schema db_car_classified_view;

set search_path = db_car_classified_view, public;

--- users

drop view if exists clients;
create view clients as
select u.user_id as user_id,
       u.name as users_name,
       overlay(u.phone::text placing '*****' from 6 for 5) as phone
from db_car_classified.users as u;

--- sales

drop view if exists sales;
create view sales as
select s.sale_id as sale_id,
    s.listing_id as listing_id,
    s.agreed_price as agreed_price
from db_car_classified.sale as s
order by agreed_price desc;

--- listings

drop view if exists listings;
create view listings as
select l.location as city,
       count(l.listing_id) as id
from db_car_classified.listing as l
group by location; --- cnt listings per city

--- cars

drop view if exists cars;
create view cars as
select cr.type as type,
    count(cr.car_id) as cnt,
    avg(cr.fuel_consumption) as avg_consumption
from db_car_classified.car as cr
group by type
having avg(cr.fuel_consumption) >= 20;

--- parts

drop view if exists parts;
create view parts as
select p.type as type,
    count(p.part_id) as cnt
from db_car_classified.part as p
where p.warranty_length > current_date
group by type;
