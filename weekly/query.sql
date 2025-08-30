-- register
INSERT INTO 
    users (email, password)
VALUES
    ('tatangboga@rocket.com', 'asdQWE!!');

-- login
SELECT *
FROM users
WHERE 
    email = 'tatangboga@rocket.com' AND
    password = 'asdQWE!!';

-- get upcoming movies
SELECT *
FROM movies
WHERE
    release_date > current_date LIMIT 20;

-- get popular movies
SELECT *
FROM movies
WHERE 
    popularity > 50 LIMIT 20;

-- get movie w/ pagination
SELECT *
FROM movies
    LIMIT 20 OFFSET 0; 

-- get schedule
SELECT * FROM cinema_schedule;

-- create order
INSERT INTO 
    book_ticket (user_id, cinema_id, payment_method, total, is_paid)
VALUES
    (1, 1, 'BCA', 30, false);

-- get profile
SELECT *
FROM personal_info
WHERE
    user_id = 1;

-- update profile
UPDATE
    personal_info
SET
    last_name = 'Gagah'
WHERE
    user_id = 1;