desc series;
-- +---------------+--------------+------+-----+---------+----------------+
-- | Field         | Type         | Null | Key | Default | Extra          |
-- +---------------+--------------+------+-----+---------+----------------+
-- | id            | int          | NO   | PRI | NULL    | auto_increment |
-- | title         | varchar(100) | YES  |     | NULL    |                |
-- | released_year | year         | YES  |     | NULL    |                |
-- | genre         | varchar(100) | YES  |     | NULL    |                |
-- +---------------+--------------+------+-----+---------+----------------+


select * from series;
-- +----+-----------------------+---------------+-----------+
-- | id | title                 | released_year | genre     |
-- +----+-----------------------+---------------+-----------+
-- |  1 | Archer                |          2009 | Animation |
-- |  2 | Arrested Development  |          2003 | Comedy    |
-- |  3 | Bob's Burgers         |          2011 | Animation |
-- |  4 | Bojack Horseman       |          2014 | Animation |
-- |  5 | Breaking Bad          |          2008 | Drama     |
-- |  6 | Curb Your Enthusiasm  |          2000 | Comedy    |
-- |  7 | Fargo                 |          2014 | Drama     |
-- |  8 | Freaks and Geeks      |          1999 | Comedy    |
-- |  9 | General Hospital      |          1963 | Drama     |
-- | 10 | Halt and Catch Fire   |          2014 | Drama     |
-- | 11 | Malcolm In The Middle |          2000 | Comedy    |
-- | 12 | Pushing Daisies       |          2007 | Comedy    |
-- | 13 | Seinfeld              |          1989 | Comedy    |
-- | 14 | Stranger Things       |          2016 | Drama     |
-- +----+-----------------------+---------------+-----------+


desc reviews;
-- +-------------+--------------+------+-----+---------+----------------+
-- | Field       | Type         | Null | Key | Default | Extra          |
-- +-------------+--------------+------+-----+---------+----------------+
-- | id          | int          | NO   | PRI | NULL    | auto_increment |
-- | rating      | decimal(2,1) | YES  |     | NULL    |                |
-- | series_id   | int          | YES  | MUL | NULL    |                |
-- | reviewer_id | int          | YES  | MUL | NULL    |                |
-- +-------------+--------------+------+-----+---------+----------------+


select * from reviews;
-- +----+--------+-----------+-------------+
-- | id | rating | series_id | reviewer_id |
-- +----+--------+-----------+-------------+
-- |  1 |    8.0 |         1 |           1 |
-- |  2 |    7.5 |         1 |           2 |
-- |  3 |    8.5 |         1 |           3 |
-- |  4 |    7.7 |         1 |           4 |
-- |  5 |    8.9 |         1 |           5 |
-- |  6 |    8.1 |         2 |           1 |
-- |  7 |    6.0 |         2 |           4 |
-- |  8 |    8.0 |         2 |           3 |
-- |  9 |    8.4 |         2 |           6 |
-- | 10 |    9.9 |         2 |           5 |
-- | 11 |    7.0 |         3 |           1 |
-- | 12 |    7.5 |         3 |           6 |
-- | 13 |    8.0 |         3 |           4 |
-- | 14 |    7.1 |         3 |           3 |
-- | 15 |    8.0 |         3 |           5 |
-- | 16 |    7.5 |         4 |           1 |
-- | 17 |    7.8 |         4 |           3 |
-- | 18 |    8.3 |         4 |           4 |
-- | 19 |    7.6 |         4 |           2 |
-- | 20 |    8.5 |         4 |           5 |
-- | 21 |    9.5 |         5 |           1 |
-- | 22 |    9.0 |         5 |           3 |
-- | 23 |    9.1 |         5 |           4 |
-- | 24 |    9.3 |         5 |           2 |
-- | 25 |    9.9 |         5 |           5 |
-- | 26 |    6.5 |         6 |           2 |
-- | 27 |    7.8 |         6 |           3 |
-- | 28 |    8.8 |         6 |           4 |
-- | 29 |    8.4 |         6 |           2 |
-- | 30 |    9.1 |         6 |           5 |
-- | 31 |    9.1 |         7 |           2 |
-- | 32 |    9.7 |         7 |           5 |
-- | 33 |    8.5 |         8 |           4 |
-- | 34 |    7.8 |         8 |           2 |
-- | 35 |    8.8 |         8 |           6 |
-- | 36 |    9.3 |         8 |           5 |
-- | 37 |    5.5 |         9 |           2 |
-- | 38 |    6.8 |         9 |           3 |
-- | 39 |    5.8 |         9 |           4 |
-- | 40 |    4.3 |         9 |           6 |
-- | 41 |    4.5 |         9 |           5 |
-- | 42 |    9.9 |        10 |           5 |
-- | 43 |    8.0 |        13 |           3 |
-- | 44 |    7.2 |        13 |           4 |
-- | 45 |    8.5 |        14 |           2 |
-- | 46 |    8.9 |        14 |           3 |
-- | 47 |    8.9 |        14 |           4 |
-- +----+--------+-----------+-------------+


desc reviewers;
-- +------------+-------------+------+-----+---------+----------------+
-- | Field      | Type        | Null | Key | Default | Extra          |
-- +------------+-------------+------+-----+---------+----------------+
-- | id         | int         | NO   | PRI | NULL    | auto_increment |
-- | first_name | varchar(50) | NO   |     | NULL    |                |
-- | last_name  | varchar(50) | NO   |     | NULL    |                |
-- +------------+-------------+------+-----+---------+----------------+


select  * from reviewers;
-- +----+------------+-----------+
-- | id | first_name | last_name |
-- +----+------------+-----------+
-- |  1 | Thomas     | Stoneman  |
-- |  2 | Wyatt      | Skaggs    |
-- |  3 | Kimbra     | Masters   |
-- |  4 | Domingo    | Cortes    |
-- |  5 | Colt       | Steele    |
-- |  6 | Pinkie     | Petit     |
-- |  7 | Marlon     | Crafford  |
-- +----+------------+-----------+


SELECT 
    title, rating
    FROM series
    JOIN reviews 
    ON series.id = reviews.series_id;
-- +----------------------+--------+
-- | title                | rating |
-- +----------------------+--------+
-- | Archer               |    8.0 |
-- | Archer               |    7.5 |
-- | Archer               |    8.5 |
-- | Archer               |    7.7 |
-- | Archer               |    8.9 |
-- | Arrested Development |    8.1 |
-- | Arrested Development |    6.0 |
-- | Arrested Development |    8.0 |
-- | Arrested Development |    8.4 |
-- | Arrested Development |    9.9 |
-- | Bob's Burgers        |    7.0 |
-- | Bob's Burgers        |    7.5 |
-- | Bob's Burgers        |    8.0 |
-- | Bob's Burgers        |    7.1 |
-- | Bob's Burgers        |    8.0 |
-- | Bojack Horseman      |    7.5 |
-- | Bojack Horseman      |    7.8 |
-- | Bojack Horseman      |    8.3 |
-- | Bojack Horseman      |    7.6 |
-- | Bojack Horseman      |    8.5 |
-- | Breaking Bad         |    9.5 |
-- | Breaking Bad         |    9.0 |
-- | Breaking Bad         |    9.1 |
-- | Breaking Bad         |    9.3 |
-- | Breaking Bad         |    9.9 |
-- | Curb Your Enthusiasm |    6.5 |
-- | Curb Your Enthusiasm |    7.8 |
-- | Curb Your Enthusiasm |    8.8 |
-- | Curb Your Enthusiasm |    8.4 |
-- | Curb Your Enthusiasm |    9.1 |
-- | Fargo                |    9.1 |
-- | Fargo                |    9.7 |
-- | Freaks and Geeks     |    8.5 |
-- | Freaks and Geeks     |    7.8 |
-- | Freaks and Geeks     |    8.8 |
-- | Freaks and Geeks     |    9.3 |
-- | General Hospital     |    5.5 |
-- | General Hospital     |    6.8 |
-- | General Hospital     |    5.8 |
-- | General Hospital     |    4.3 |
-- | General Hospital     |    4.5 |
-- | Halt and Catch Fire  |    9.9 |
-- | Seinfeld             |    8.0 |
-- | Seinfeld             |    7.2 |
-- | Stranger Things      |    8.5 |
-- | Stranger Things      |    8.9 |
-- | Stranger Things      |    8.9 |
-- +----------------------+--------+


select
    title,
    avg(rating) as avg_rating
from
    series
    join reviews on series.id = reviews.series_id
group by
    title
order by
    avg_rating;
-- +----------------------+------------+
-- | title                | avg_rating |
-- +----------------------+------------+
-- | General Hospital     |    5.38000 |
-- | Bob's Burgers        |    7.52000 |
-- | Seinfeld             |    7.60000 |
-- | Bojack Horseman      |    7.94000 |
-- | Arrested Development |    8.08000 |
-- | Archer               |    8.12000 |
-- | Curb Your Enthusiasm |    8.12000 |
-- | Freaks and Geeks     |    8.60000 |
-- | Stranger Things      |    8.76667 |
-- | Breaking Bad         |    9.36000 |
-- | Fargo                |    9.40000 |
-- | Halt and Catch Fire  |    9.90000 |
-- +----------------------+------------+


select first_name, last_name, rating from reviewers join reviews on reviews.reviewer_id=reviewers.id ;
-- +------------+-----------+--------+
-- | first_name | last_name | rating |
-- +------------+-----------+--------+
-- | Thomas     | Stoneman  |    8.0 |
-- | Thomas     | Stoneman  |    8.1 |
-- | Thomas     | Stoneman  |    7.0 |
-- | Thomas     | Stoneman  |    7.5 |
-- | Thomas     | Stoneman  |    9.5 |
-- | Wyatt      | Skaggs    |    7.5 |
-- | Wyatt      | Skaggs    |    7.6 |
-- | Wyatt      | Skaggs    |    9.3 |
-- | Wyatt      | Skaggs    |    6.5 |
-- | Wyatt      | Skaggs    |    8.4 |
-- | Wyatt      | Skaggs    |    9.1 |
-- | Wyatt      | Skaggs    |    7.8 |
-- | Wyatt      | Skaggs    |    5.5 |
-- | Wyatt      | Skaggs    |    8.5 |
-- | Kimbra     | Masters   |    8.5 |
-- | Kimbra     | Masters   |    8.0 |
-- | Kimbra     | Masters   |    7.1 |
-- | Kimbra     | Masters   |    7.8 |
-- | Kimbra     | Masters   |    9.0 |
-- | Kimbra     | Masters   |    7.8 |
-- | Kimbra     | Masters   |    6.8 |
-- | Kimbra     | Masters   |    8.0 |
-- | Kimbra     | Masters   |    8.9 |
-- | Domingo    | Cortes    |    7.7 |
-- | Domingo    | Cortes    |    6.0 |
-- | Domingo    | Cortes    |    8.0 |
-- | Domingo    | Cortes    |    8.3 |
-- | Domingo    | Cortes    |    9.1 |
-- | Domingo    | Cortes    |    8.8 |
-- | Domingo    | Cortes    |    8.5 |
-- | Domingo    | Cortes    |    5.8 |
-- | Domingo    | Cortes    |    7.2 |
-- | Domingo    | Cortes    |    8.9 |
-- | Colt       | Steele    |    8.9 |
-- | Colt       | Steele    |    9.9 |
-- | Colt       | Steele    |    8.0 |
-- | Colt       | Steele    |    8.5 |
-- | Colt       | Steele    |    9.9 |
-- | Colt       | Steele    |    9.1 |
-- | Colt       | Steele    |    9.7 |
-- | Colt       | Steele    |    9.3 |
-- | Colt       | Steele    |    4.5 |
-- | Colt       | Steele    |    9.9 |
-- | Pinkie     | Petit     |    8.4 |
-- | Pinkie     | Petit     |    7.5 |
-- | Pinkie     | Petit     |    8.8 |
-- | Pinkie     | Petit     |    4.3 |
-- +------------+-----------+--------+


SELECT 
         title AS unreviewed_series
     FROM
    ->         series
    ->             LEFT JOIN
    ->         reviews ON series.id = reviews.series_id
    ->     WHERE
    ->         rating IS NULL;
-- +-----------------------+
-- | unreviewed_series     |
-- +-----------------------+
-- | Malcolm In The Middle |
-- | Pushing Daisies       |
-- +-----------------------+


SELECT 
         title AS unreviewed_series
        FROM
         reviews
             RIGHT JOIN
         series ON series.id = reviews.series_id
     WHERE
         rating IS NULL;
-- +-----------------------+
-- | unreviewed_series     |
-- +-----------------------+
-- | Malcolm In The Middle |
-- | Pushing Daisies       |
-- +-----------------------+


select genre, avg(rating) as avg_rating from series join reviews on series.id=reviews.series_id group by genre;
+-----------+------------+
| genre     | avg_rating |
+-----------+------------+
| Animation |    7.86000 |
| Comedy    |    8.16250 |
| Drama     |    8.04375 |
+-----------+------------+


 SELECT 
    ->         first_name,
    ->         last_name,
    ->         COUNT(rating) AS count,
    ->         IFNULL(MIN(rating), 0) AS min,
    ->         IFNULL(MAX(rating), 0) AS max,
    ->         ROUND(IFNULL(AVG(rating), 0), 2) AS average,
    ->         CASE
    ->             WHEN COUNT(rating) >= 10 THEN 'POWERUSER'
    ->             WHEN COUNT(rating) > 0 THEN 'ACTIVE'
    ->             ELSE 'INACTIVE'
    ->         END AS status
    ->     FROM
    ->         reviewers
    ->             LEFT JOIN
    ->         reviews ON reviewers.id = reviews.reviewer_id
    ->     GROUP BY first_name , last_name;
-- +------------+-----------+-------+-----+-----+---------+-----------+
-- | first_name | last_name | count | min | max | average | status    |
-- +------------+-----------+-------+-----+-----+---------+-----------+
-- | Thomas     | Stoneman  |     5 | 7.0 | 9.5 |    8.02 | ACTIVE    |
-- | Wyatt      | Skaggs    |     9 | 5.5 | 9.3 |    7.80 | ACTIVE    |
-- | Kimbra     | Masters   |     9 | 6.8 | 9.0 |    7.99 | ACTIVE    |
-- | Domingo    | Cortes    |    10 | 5.8 | 9.1 |    7.83 | POWERUSER |
-- | Colt       | Steele    |    10 | 4.5 | 9.9 |    8.77 | POWERUSER |
-- | Pinkie     | Petit     |     4 | 4.3 | 8.8 |    7.25 | ACTIVE    |
-- | Marlon     | Crafford  |     0 | 0.0 | 0.0 |    0.00 | INACTIVE  |
-- +------------+-----------+-------+-----+-----+---------+-----------+



SELECT 
             first_name,
             last_name,
             COUNT(rating) AS count,
             IFNULL(MIN(rating), 0) AS min,
             IFNULL(MAX(rating), 0) AS max,
             ROUND(IFNULL(AVG(rating), 0), 2) AS average,
             IF(COUNT(rating) > 0,
                 'ACTIVE',
                 'INACTIVE') AS status
         FROM
             reviewers
                 LEFT JOIN
             reviews ON reviewers.id = reviews.reviewer_id
         GROUP BY first_name , last_name;
-- +------------+-----------+-------+-----+-----+---------+----------+
-- | first_name | last_name | count | min | max | average | status   |
-- +------------+-----------+-------+-----+-----+---------+----------+
-- | Thomas     | Stoneman  |     5 | 7.0 | 9.5 |    8.02 | ACTIVE   |
-- | Wyatt      | Skaggs    |     9 | 5.5 | 9.3 |    7.80 | ACTIVE   |
-- | Kimbra     | Masters   |     9 | 6.8 | 9.0 |    7.99 | ACTIVE   |
-- | Domingo    | Cortes    |    10 | 5.8 | 9.1 |    7.83 | ACTIVE   |
-- | Colt       | Steele    |    10 | 4.5 | 9.9 |    8.77 | ACTIVE   |
-- | Pinkie     | Petit     |     4 | 4.3 | 8.8 |    7.25 | ACTIVE   |
-- | Marlon     | Crafford  |     0 | 0.0 | 0.0 |    0.00 | INACTIVE |
-- +------------+-----------+-------+-----+-----+---------+----------+


SELECT
    title,
    rating,
    CONCAT(first_name, ' ', last_name) AS reviewer
FROM
    reviews
    INNER JOIN series ON reviews.series_id = series.id
    INNER JOIN reviewers ON reviews.reviewer_id = reviewers.id;
-- +----------------------+--------+-----------------+
-- | title                | rating | reviewer        |
-- +----------------------+--------+-----------------+
-- | Archer               |    8.0 | Thomas Stoneman |
-- | Arrested Development |    8.1 | Thomas Stoneman |
-- | Bob's Burgers        |    7.0 | Thomas Stoneman |
-- | Bojack Horseman      |    7.5 | Thomas Stoneman |
-- | Breaking Bad         |    9.5 | Thomas Stoneman |
-- | Archer               |    7.5 | Wyatt Skaggs    |
-- | Bojack Horseman      |    7.6 | Wyatt Skaggs    |
-- | Breaking Bad         |    9.3 | Wyatt Skaggs    |
-- | Curb Your Enthusiasm |    6.5 | Wyatt Skaggs    |
-- | Curb Your Enthusiasm |    8.4 | Wyatt Skaggs    |
-- | Fargo                |    9.1 | Wyatt Skaggs    |
-- | Freaks and Geeks     |    7.8 | Wyatt Skaggs    |
-- | General Hospital     |    5.5 | Wyatt Skaggs    |
-- | Stranger Things      |    8.5 | Wyatt Skaggs    |
-- | Archer               |    8.5 | Kimbra Masters  |
-- | Arrested Development |    8.0 | Kimbra Masters  |
-- | Bob's Burgers        |    7.1 | Kimbra Masters  |
-- | Bojack Horseman      |    7.8 | Kimbra Masters  |
-- | Breaking Bad         |    9.0 | Kimbra Masters  |
-- | Curb Your Enthusiasm |    7.8 | Kimbra Masters  |
-- | General Hospital     |    6.8 | Kimbra Masters  |
-- | Seinfeld             |    8.0 | Kimbra Masters  |
-- | Stranger Things      |    8.9 | Kimbra Masters  |
-- | Archer               |    7.7 | Domingo Cortes  |
-- | Arrested Development |    6.0 | Domingo Cortes  |
-- | Bob's Burgers        |    8.0 | Domingo Cortes  |
-- | Bojack Horseman      |    8.3 | Domingo Cortes  |
-- | Breaking Bad         |    9.1 | Domingo Cortes  |
-- | Curb Your Enthusiasm |    8.8 | Domingo Cortes  |
-- | Freaks and Geeks     |    8.5 | Domingo Cortes  |
-- | General Hospital     |    5.8 | Domingo Cortes  |
-- | Seinfeld             |    7.2 | Domingo Cortes  |
-- | Stranger Things      |    8.9 | Domingo Cortes  |
-- | Archer               |    8.9 | Colt Steele     |
-- | Arrested Development |    9.9 | Colt Steele     |
-- | Bob's Burgers        |    8.0 | Colt Steele     |
-- | Bojack Horseman      |    8.5 | Colt Steele     |
-- | Breaking Bad         |    9.9 | Colt Steele     |
-- | Curb Your Enthusiasm |    9.1 | Colt Steele     |
-- | Fargo                |    9.7 | Colt Steele     |
-- | Freaks and Geeks     |    9.3 | Colt Steele     |
-- | General Hospital     |    4.5 | Colt Steele     |
-- | Halt and Catch Fire  |    9.9 | Colt Steele     |
-- | Arrested Development |    8.4 | Pinkie Petit    |
-- | Bob's Burgers        |    7.5 | Pinkie Petit    |
-- | Freaks and Geeks     |    8.8 | Pinkie Petit    |
-- | General Hospital     |    4.3 | Pinkie Petit    |
-- +----------------------+--------+-----------------+


