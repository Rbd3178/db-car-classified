set search_path = db_car_classified, public;

/* Получить отсортированную по возрастанию цены выборку объявлений
с типом машины Sedan произведенными не раньше 1995 года
и разницу со средней ценой на такие автомобили у каждого объявления*/

select 
	l.listing_id,
	c.name,
	c.type,
	l.asking_price,
	l.asking_price  - avg(l.asking_price) over () as difference_from_avg,
	l.production_date,
	l.description,
	u.name,
	l.location,
	l.date_added,
	l.views_amount
from
	listing l
inner join car c 
on
	l.car_id = c.car_id
inner join users u 
on
	l.user_id = u.user_id
where
	c.type = 'Sedan'
	and l.production_date >= ('1995-01-01')
order by
	l.asking_price asc;
	
/* Получить среднюю цену на запчасти для BMW X5 по выбранным регионам 
в открытых объявлениях, отсортировать по возрастанию */

select
	l.location,
	avg(l.asking_price) as average_part_cost_BMW_X5
from
	listing l
inner join part p 
on
	l.part_id = p.part_id
inner join car_x_part cxp 
on
	p.part_id = cxp.part_id
inner join car c 
on
	cxp.car_id = c.car_id
left join sale s 
on
	s.listing_id = l.listing_id
where
	c.name = 'BMW X5'
	and s.listing_id is null
group by
	l.location
having
	l.location in ('London', 'Ostin', 'Munchester', 'Gorgorod')
order by
	average_part_cost_BMW_X5 asc;

--- Найти общий объем продаж на площадке за каждый месяц

with grouped as (
select
	date_trunc('month', sale_date) as sales_month,
	sum(agreed_price) as monthly_sum
from
	sale
group by
	sales_month
order by
	sales_month asc)
select
	to_char(sales_month, 'YYYY-Month') as sales_month, --- Пришлось сделать так, потому что он неправильно упорядочивает приведенную к строке дату
	monthly_sum
from
	grouped;

/* Вывести список названий машин, отсортированный по убыванию количества купленных запчастей, 
и средее количество купленных запчастей по производителю для каждой машины 
начиная с некоторой даты*/

select 
	c.name as car_name,
	m.name as manufacturer_name,
	count(s.sale_id) as parts_sold_cnt,
	avg(count(s.sale_id)) over (partition by m.name)
from
	car c
inner join manufacturer m 
on
	c.manufacturer_id = m.manufacturer_id
inner join car_x_part cxp 
on
	c.car_id = cxp.car_id
inner join part p 
on
	cxp.part_id = p.part_id
inner join listing l 
on
	l.part_id = p.part_id
inner join sale s 
on
	s.listing_id = l.listing_id
where
	s.sale_date > '2000-01-01'
group by
	c.name,
	m.name
order by
	parts_sold_cnt desc;







