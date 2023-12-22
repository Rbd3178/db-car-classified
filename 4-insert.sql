set search_path = db_car_classified, public;

--- users

insert into users
    (name, phone, email, location)
values
    ('Sergei Kopeliovich', '+79215934665',
    'burunduk@edu.hse.ru', 'SAINT-P');

insert into users
    (name, phone, email, location)
values
    ('OXXXYMIRON', '+79215934677',
    'Oxxxy@gmail.com', 'London');

insert into users
    (name, phone, email, location)
values
    ('Vasyxa_239', '+79217772524',
    'Vasyxa04@mail.ru', 'SAINT-P');


 insert into users
    (name, phone, email, location)
values
    ('Alexandr Sergeevich Chehov', '+79217689235',
    'Chekhonte@mail.ru', 'Taganrog');


insert into users
    (name, phone, email, location)
values
    ('Mark Henry', '+79812346289',
    'MHenry@mail.ru', 'Ostin');

insert into users
    (name, phone, email, location)
values
    ('Marcus Rashford', '+79815677656',
    'rash@mail.ru', 'Manchester');

insert into users
    (name, phone, email, location)
values
    ('Michael Antipov', '+79815677655',
     'bobik123@mail.ru', 'Sochi');

insert into users
    (name, phone, email, location)
values
    ('Mark', '+79508794565',
    'Mark@gmail.com', 'Gorgorod');

insert into users
    (name, phone, email, location)
values
    ('Sol Campbell', '+79534853921',
    'Giga@gmail.com', 'Gorgorod');

--- manufacterer

insert into manufacturer
    (name, website)
values
    ('Bugatti', 'bugatti.com');

insert into manufacturer
  (name, website)
values
    ('Isuzu', 'isuzu.com');

insert into manufacturer
    (name, website)
values
    ('BMW', 'bmv.com');

insert into manufacturer
    (name, website)
values
    ('LADA', 'lada.ru');

insert into manufacturer
    (name, website)
values
    ('Kia', 'kia.com');

insert into manufacturer
    (name, website)
values
    ('Honda', 'honda.com');

insert into manufacturer
    (name, website)
values
    ('Koenigsegg', 'koenigsegg.com');

--- car

insert into car
    (manufacturer_id, name, type,
    engine_power, fuel_consumption)
values
    (1, 'BUGATTI VEYRON SUPER SPORT',   'Sportcar',
    1200, 41.9);

insert into car
    (manufacturer_id, name, type,
    engine_power, fuel_consumption)
values
    (2, 'Isuzu NQR', 'truck',
    155, 16);

insert into car
    (manufacturer_id, name, type,
    engine_power, fuel_consumption)
values
    (7, 'Koenigsegg agera', 'Sportcar',
    910, 15);

insert into car
    (manufacturer_id, name, type,
    engine_power, fuel_consumption)
values
    (3, 'BMW X1', 'Crossover',
    200, 8);

insert into car
    (manufacturer_id, name, type,
     engine_power, fuel_consumption)
values
    (3, 'BMW X5', 'Crossover',
    450, 15);

insert into car
    (manufacturer_id, name, type,
     engine_power, fuel_consumption)
values
    (5, 'Kia Rio', 'Sedan',
    100, 5);

insert into car
    (manufacturer_id, name, type,
     engine_power, fuel_consumption)
values
    (6, 'Honda Civic', 'Sedan',
    130, 8);

insert into car
    (manufacturer_id, name, type,
    engine_power, fuel_consumption)
values
    (4, 'Lada Kalina', 'Sedan',
    90, 7);

--- part

insert into part
    (manufacturer_id, type,
    name, warranty_length)
values
    (2, 'truck body',
   'unfolding truck body fold out truck body chassis s',
   '2027-05-27');

insert into part
    (manufacturer_id, type,
    name, warranty_length)
values
    (1, 'brakes',
   'Carbon ceramic brakes Akebono 10 prsh Bugatti',
   '2025-05-23');

insert into part
    (manufacturer_id, type,
    name, warranty_length)
values
    (3, 'door',
   'Left rear door BMW E84 41002993819',
   '2028-05-21');

insert into part
    (manufacturer_id, type,
    name, warranty_length)
values
    (5, 'mirror',
   'HONDA-KIA Rearview door mirror',
   '2029-10-11');

insert into part
    (manufacturer_id, type,
    name, warranty_length)
values
    (7, 'pads',
    'brake pads', '2026-12-31');

insert into part
    (manufacturer_id, type,
    name, warranty_length)
values
    (4, 'brake',
    'rear brake drum', '2025-08-01');

--- car_x_part

insert into car_x_part
    (car_id, part_id)
values
    (2, 1);

insert into car_x_part
    (car_id, part_id)
values
    (1, 2);


insert into car_x_part
    (car_id, part_id)
values
    (4, 3);

insert into car_x_part
    (car_id, part_id)
values
    (5, 3);

insert into car_x_part
    (car_id, part_id)
values
    (6, 4);

insert into car_x_part
    (car_id, part_id)
values
    (7, 4);

insert into car_x_part
    (car_id, part_id)
values
    (3, 5);

insert into car_x_part
    (car_id, part_id)
values
    (8, 6);

--- listing

insert into listing
    (user_id, car_id, part_id, asking_price, location,
    description, date_added, views_amount,
    production_date, mileage, color, license_number)
values
    (2, 1, null, 3000000, 'London',
    'Good car', '2009-10-23', 105,
    '2008-09-12', 10000, 'red', 'Е239ЕР');

insert into listing
    (user_id, car_id, part_id, asking_price, location,
    description, date_added, views_amount,
    production_date, mileage, color, license_number)
values
    (1, 3, null, 2500000, 'Saint-P',
    'I sell this car', '2005-10-22', 99,
    '2010-07-11', 4500, 'carbon', 'К930ЕР');

insert into listing
    (user_id, car_id, part_id, asking_price, location,
    description, date_added, views_amount,
    production_date, mileage, color, license_number)
values
    (1, 8, null, 500, 'Saint-P',
    'Lada', '2001-09-11', 200,
    '1998-11-13', 50000, 'silver', 'А228УЕ');

insert into listing
    (user_id, car_id, part_id, asking_price, location,
    description, date_added, views_amount,
    production_date, mileage, color, license_number)
values
    (3, 4, null, 2000, 'Saint-P',
    'I sell this car', '2015-10-27', 111,
    '2014-07-30', 1000, 'black', 'А229РК');

insert into listing
    (user_id, car_id, part_id, asking_price, location,
    description, date_added, views_amount,
    production_date, mileage, color, license_number)
values
    (4, null, 1, 10000, 'Taganrog',
    'I sell this part','2005-09-20', 170,
    '2003-02-07', null, null, null);

insert into listing
    (user_id, car_id, part_id, asking_price, location,
    description, date_added, views_amount,
    production_date, mileage, color, license_number)
values
    (5, null, 3, 200, 'Ostin',
    'I sell this part', '2009-09-24', 170,
    '2007-05-23', null, null, null);

insert into listing
    (user_id, car_id, part_id, asking_price, location,
    description, date_added, views_amount,
    production_date, mileage, color, license_number)
values
    (6, null, 2, 13000, 'Munchester',
    'I sell this part', '2010-05-14', 182,
    '2007-11-21', null, null, null);

insert into listing
    (user_id, car_id, part_id, asking_price, location,
    description, date_added, views_amount,
    production_date, mileage, color, license_number)
values
    (7, null, 5, 3000,
    'Adler', 'I sell this part',
    '2009-03-25', 135,
    '2007-10-13', null, null, null);

insert into listing
    (user_id, car_id, part_id, asking_price, location,
    description, date_added, views_amount,
    production_date, mileage, color, license_number)
values
    (8, 7, null, 2000, '',
    'I sell this car', '2009-09-24', 170,
    '2007-05-23', 1100, 'silver', 'Х230ХХ');

insert into listing
    (user_id, car_id, part_id, asking_price, location,
    description, date_added, views_amount,
    production_date, mileage, color, license_number)
values
    (9, null, 6, 200, 'Gorgorod',
    'I sell this part', '2015-03-30', 127,
    '2013-07-12', null, null, null);

--- sale

insert into sale
  (listing_id, buyer_id, sale_date, agreed_price)
values
  (1, 3, '2010-11-22', 2800000);


insert into sale
  (listing_id, buyer_id, sale_date, agreed_price)
values
  (3, 3, '2002-01-01', 500);


insert into sale
  (listing_id, buyer_id, sale_date, agreed_price)
values
  (9, 4, '2010-09-08', 1800);

insert into sale
  (listing_id, buyer_id, sale_date, agreed_price)
values
  (5, 7, '2006-1-21', 9999);


insert into sale
  (listing_id, buyer_id, sale_date, agreed_price)
values
  (7, 3, '2010-07-12', 12000);