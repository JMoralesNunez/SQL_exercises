CREATE TABLE flights (
    id SERIAL PRIMARY KEY,
    origin VARCHAR(100),
    destination VARCHAR(100),
    date DATE,
    hour TIME
);

CREATE TABLE passengers (
    id SERIAL PRIMARY KEY,
    passenger_name VARCHAR(120),
    passenger_document INT UNIQUE
);

CREATE TABLE reservations (
    id SERIAL PRIMARY KEY,
    id_passenger INT REFERENCES passengers(id),
    id_flight INT REFERENCES flights(id),
    sit VARCHAR(10) UNIQUE,
    class TEXT check (class in ('normal', 'first-class'))
);
