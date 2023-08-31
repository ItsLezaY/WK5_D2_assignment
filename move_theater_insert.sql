-- Insert data into the customers table
INSERT INTO customers (
    customer_id,
    first_name,
    email_address,
    customer_age
) VALUES (
    1,
    'Alex',
    'Alex_Swiggum@codingtemple.com',
    30
);

-- Insert data into the movies table
INSERT INTO movies (
    movie_id,
    title,
    genre,
    age_rating
) VALUES (
    1,
    'Howls Moving Castle',
    'Adventure',
    'PG-13'
);

-- Insert data into the staff table
INSERT INTO staff (
    staff_id,
    first_name,
    last_name,
    role
) VALUES (
    2,
    'Brendan',
    'Carlson',
    'Cashier'
);

-- Insert data into the tickets table
INSERT INTO tickets (
    ticket_id,
    customer_id,
    movie_id,
    seat_number,
    price,
    show_time,
    staff_id,
    theater_number,
    show_date
) VALUES (
    12,
    1,
    1,
    'F12',
    12.99,
    '2023-09-15 19:30:00',
    2,
    7,
    '2023-09-15'
);

-- Insert data into the concessions table
INSERT INTO concessions (
    concession_id,
    staff_id,
    customer_id,
    item_id,
    tax,
    total_cost
) VALUES (
    1,
    1,
    1,
    3,
    2.00,
    15.00
);

-- Insert data into the concession_items table
INSERT INTO concession_items (
    item_id,
    concession_id,
    item_name,
    item_type,
    item_cost
) VALUES (
    3,
    1,
    'Large Popcorn',
    'Food',
    8.00
);
