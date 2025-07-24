CREATE TABLE clients (
    id SERIAL PRIMARY KEY,
    client_name VARCHAR(100),
    client_address TEXT,
    client_email VARCHAR(100) UNIQUE
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(45),
    price NUMERIC(10,2),
    stock INT
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    id_client INT REFERENCES clients(id),
    date DATE,
    state TEXT CHECK (state IN ('in-route', 'pending', 'delivered'))
);

CREATE TABLE order_details (
    id SERIAL PRIMARY KEY,
    id_order INT REFERENCES orders(id),
    id_product INT REFERENCES products(id),
    quantity INT,
    unit_price NUMERIC(10,2)
);
