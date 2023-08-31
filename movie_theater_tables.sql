-- customers table
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    email_address VARCHAR(255),
    customer_age INT
);

SELECT *
FROM customers

-- movies table
CREATE TABLE movies (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    genre VARCHAR(255),
    age_rating VARCHAR(255)
);

SELECT *
FROM movies

-- staff table
CREATE TABLE staff (
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    role VARCHAR(255)
);

SELECT *
FROM staff

-- tickets table
CREATE TABLE tickets (
    ticket_id SERIAL PRIMARY KEY,
    customer_id INT,
    movie_id INT,
    seat_number VARCHAR(255),
    price DECIMAL(10, 2),
    show_time TIMESTAMP,
    staff_id INT,
    theater_number INT,
    show_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);

SELECT *
FROM tickets

-- concessions table
CREATE TABLE concessions (
    concession_id SERIAL PRIMARY KEY,
    staff_id INT,
    customer_id INT,
    item_id INT,
    tax DECIMAL(10, 2),
    total_cost DECIMAL(10, 2)
);

-- concession_items table
CREATE TABLE concession_items (
    item_id SERIAL PRIMARY KEY,
    concession_id INT,
    item_name VARCHAR(255),
    item_type VARCHAR(255),
    item_cost DECIMAL(10, 2)
);

-- Add foreign key constraint to concession_items table
ALTER TABLE concession_items
ADD FOREIGN KEY (concession_id) REFERENCES concessions(concession_id);

SELECT *
FROM concession_items

SELECT *
FROM concessions
