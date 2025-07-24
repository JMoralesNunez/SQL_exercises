CREATE TABLE events (
    id SERIAL PRIMARY KEY,
    event_name VARCHAR(100),
    date DATE,
    place VARCHAR(100)
);

CREATE TABLE clients (
    id SERIAL PRIMARY KEY,
    client_name VARCHAR(120),
    client_email VARCHAR(100)
);

CREATE TABLE entrances (
    id SERIAL PRIMARY KEY,
    id_event INT REFERENCES events(id),
    id_client INT REFERENCES clients(id),
    type TEXT check(type in('normal', 'VIP')),
    price NUMERIC(6,2)
);
