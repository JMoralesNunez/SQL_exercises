CREATE TABLE clients (
    id SERIAL PRIMARY KEY,
    client_name VARCHAR(120),
    client_phone INT
);

CREATE TABLE rooms (
    id SERIAL PRIMARY KEY,
    room_number INT,
    room_type TEXT check (room_type in ('single', 'double')),
    room_price NUMERIC(5,2)
);

CREATE TABLE reservations (
    id SERIAL PRIMARY KEY,
    id_client INT REFERENCES clients(id),
    id_room INT REFERENCES rooms(id),
    date_start DATE,
    date_end DATE
);
