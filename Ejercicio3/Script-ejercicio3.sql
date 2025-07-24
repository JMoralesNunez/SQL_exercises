CREATE TABLE pacients (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    document INT UNIQUE,
    eps VARCHAR(50)
);

CREATE TABLE doctors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    specialty TEXT
);

CREATE TABLE appointment (
    id SERIAL PRIMARY KEY,
    id_pacient INT REFERENCES pacients(id),
    id_doctor INT REFERENCES doctors(id),
    date DATE,
    hour TIME,
    reason TEXT
);
