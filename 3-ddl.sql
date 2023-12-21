create schema db_car_classified;

set
search_path = db_car_classified,
public;

create table if not exists manufacturer(
  manufacturer_id serial,
  name varchar (50) not null,
  website varchar (50),
  primary key (manufacturer_id)
);

create table if not exists car(
  car_id serial,
  manufacturer_id integer,
  name varchar (50) not null,
  type varchar (50),
  engine_power float,
  fuel_consumption float,
  primary key (car_id),
  foreign key (manufacturer_id)
  references manufacturer(manufacturer_id)
);

create table if not exists part(
  part_id serial,
  manufacturer_id integer,
  type varchar(50) not null,
  name varchar(50) not null,
  warranty_length date,
  primary key (part_id),
  foreign key (manufacturer_id)
  references manufacturer(manufacturer_id)
);

create table if not exists car_x_part(
  car_id integer,
  part_id integer,
  foreign key (car_id)
  references car(car_id),
  foreign key (part_id)
  references part(part_id)
);

create table users(
  user_id serial,
  name varchar (50) not null,
  phone varchar (50) unique check (phone similar to '(\+7|8){1}([0-9]{10})'),
  email varchar (50) unique check (email similar to '%@%(\.%)+'),
  location varchar (50),
  primary key (user_id)
);

create table if not exists listing (
  listing_id serial,
  user_id integer not null,
  car_id integer,
  part_id integer,
  asking_price decimal not null,
  location varchar (50),
  description varchar (50),
  date_added date,
  views_amount integer,
  production_date date,
  mileage integer,
  license_number varchar (10) unique check (license_number similar to '([АВЕКМНОРСТУХ]{1})([0-9]{3})([АВЕКМНОРСТУХ]{2})'),
  primary key (listing_id),
  foreign key (user_id)
  references users(user_id),
  foreign key (car_id)
  references car(car_id),
  foreign key (part_id)
  references part(part_id)
);

create table if not exists sale(
  sale_id serial,
  listing_id integer not null,
  buyer_id integer,
  sale_date date,
  agreed_price decimal,
  primary key (sale_id),
  foreign key (listing_id)
  references listing(listing_id),
  foreign key (buyer_id)
  references users(user_id)
);
