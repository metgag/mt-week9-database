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

-- filter movie by name and genre w/pagination
SELECT title, genre_id
FROM movies
INNER JOIN movies_genre
ON id = movie_id
WHERE
  title ILIKE ('%%') AND
  genre_id = 53
LIMIT 20 OFFSET 0;

-- get schedule
SELECT s.id, m.title, s.date, t.time, l.location, c.name
FROM 
  cinema_schedule AS s
JOIN
  movies AS m
  ON s.movie_id = m.id
JOIN
  jam_tayang AS t
  ON s.time_id = t.id
JOIN
  lokasi_tayang AS l
  ON s.location_id = l.id
JOIN
  cinema_tayang AS c
  ON s.cinema_id = c.id;

-- get seat sold
SELECT s.pos, s.id
FROM seats AS s
JOIN
  books_seats AS b ON s.id = b.seat_id
;

-- get movie detail
SELECT
  m.title, m.poster_path, m.backdrop_path, m.release_date, m.runtime, m.overview, d.name "director", mg.genre_id
FROM
  movies AS m
JOIN
  directors AS d ON m.director_id = d.id
JOIN
  movies_genre AS mg ON m.id = mg.movie_id
WHERE m.id = 3;

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

-- get history
SELECT u.id, m.title, s.date, t.time, ct.name, b.is_paid
FROM
  book_ticket AS b
JOIN
  users AS u ON b.user_id = u.id
JOIN
  cinema_schedule AS c ON b.schedule_id = c.id
JOIN
  movies AS m ON c.movie_id = m.id
JOIN
  cinema_schedule AS s ON b.schedule_id = s.id
JOIN
  jam_tayang AS t ON s.time_id = t.id
JOIN
  cinema_tayang AS ct ON s.cinema_id = ct.id
WHERE 
  u.id = 1
;

-- update profile
UPDATE
    personal_info
SET
    last_name = 'Gagah'
WHERE
    user_id = 1;
