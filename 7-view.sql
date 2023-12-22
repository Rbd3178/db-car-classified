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
