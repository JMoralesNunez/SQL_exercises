CREATE TABLE drivers (
    id SERIAL PRIMARY KEY,
    driver_name VARCHAR(120),
    licence VARCHAR(45)
);

CREATE TABLE routes (
    id SERIAL PRIMARY KEY,
    origin TEXT,
    destination TEXT,
    hour TIME
);

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(120),
    grade INT
);

create table given_routes (
	id SERIAL primary key,
	id_student INT references students(id),
	id_route INT references routes(id)
) 

CREATE TABLE drivers_have_routes (
    id_driver INT REFERENCES drivers(id),
    id_route INT REFERENCES routes(id),
    PRIMARY KEY(id_driver, id_route)
);
