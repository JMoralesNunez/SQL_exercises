CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category TEXT check (category in ('edibles', 'decoration', 'entertaintment')),
    stock INT
);

CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
    type VARCHAR(10) CHECK (type IN ('purchase', 'sell')),
    date DATE,
    quantity INT CHECK (quantity > 0),
    id_product INT REFERENCES products(id)
);
