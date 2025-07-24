CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
)



CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    author VARCHAR(100),
    year DATE,
    genre TEXT
)

CREATE TABLE lendings (
    id SERIAL PRIMARY KEY,
    id_user INT REFERENCES users(id),
    id_book INT REFERENCES books(id),
    lend_date DATE,
    return_date DATE
);