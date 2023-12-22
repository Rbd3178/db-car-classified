set search_path = db_car_classified, public;

--- Получить отсортированную по возрастанию цены выборку объявлений с типом машины Sedan и годом производства не ранее 2000

select 
	l.listing_id,
	c.name,
	c.type,
	l.asking_price,
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
	and l.production_date >= ('2000-01-01')
order by
	l.asking_price asc;
	
--- получить среднюю цену на запчасти для BMW X5 по выбранным регионам, отсортировать по возрастанию

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
where
	c.name = 'BMW X5'
group by
	l.location
having
	l.location in ('London', 'Ostin', 'Munchester', 'Gorgorod')
order by
	average_part_cost_BMW_X5 asc;






