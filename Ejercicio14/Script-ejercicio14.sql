CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    deparment_name VARCHAR(45),
    deparment_location VARCHAR(100)
);

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    employee_name VARCHAR(120),
    employee_charge VARCHAR(50),
    id_department INT REFERENCES departments(id)
);


