set search_path = db_car_classified, public;

--- inserting some parts

insert into part
    (manufacturer_id, type, name, warranty_length)
values
    (5, 'mirror', 'BMW Rearview door mirror', '30.12.2023'),
    (3, 'door', 'Left rear door Lada', '04.11.2024'),
    (4, 'summer tire', 'Pirelli Cinturato P1 Verde', '25.12.2024'),
    (7, 'winter tire', 'Toyo Observe Ice-Freezer', '22.11.2024'),
    (5, 'windshield', 'Ford Transit', '17.10.2023');

--- creating users

insert into users
    (name, phone, email, location)
values
    ('bebra_228', '+79998887766', 'bebra@mail.ru', 'Novorossiysk'),
    ('aboba', '+79345832457', 'gwiejbg@mail.ru', 'Moscow'),
    ('ivan_1980', '+79297658466', 'vanya666@mail.ru', 'Sochi'),
    ('irina_krasnodar', '89893746163', 'ira@mail.ru', 'Krasnodar'),
    ('oksana_2004', '+79291877663', 'oksana@mail.ru', 'Kazan');

--- select parts with valid warranty period

select type, name
from part
where warranty_length > '21.12.2023';

--- select users from Saint Petersburg

select name, phone
from users
where location like 'SAINT-P';

--- update warranty_length for steering mirror

update part
set warranty_length = '01.01.2025'
where type like 'mirror';

--- update user's email

update users
set email = 'banana_cat_228@mail.ru'
where name like 'Mark';

--- delete - coming soon)