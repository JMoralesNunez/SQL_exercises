create table clients (
	id SERIAL primary key,
	name VARCHAR(120) NOT NULL,
	address TEXT NOT NULL
);

create table packages(
	id SERIAL primary key,
	weight DECIMAL not null,
	state TEXT check (state in ('sent', 'in-route', 'delivered')),
	type TEXT check (type in ('fragile', 'express')),
	id_client INT references clients(id),
	id_route INT references routes(id)
);

create table routes (
	id SERIAL primary key,
	origin TEXT,
	destination TEXT,
	deliver_date TIMESTAMP
);
