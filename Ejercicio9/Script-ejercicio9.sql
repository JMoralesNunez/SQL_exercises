CREATE TABLE tables (
    id SERIAL PRIMARY KEY,
    table_number INT,
    capacity INT
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(45),
    product_price NUMERIC(6,2)
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    id_table INT REFERENCES tables(id),
    date TIMESTAMP,
    state TEXT check (state in ('in-progress', 'done', 'cancelled'))
);

CREATE TABLE orderdetails (
    id SERIAL PRIMARY KEY,
    id_order INT REFERENCES orders(id),
    id_product INT REFERENCES products(id),
    quantity INT
);
