    CREATE TABLE if not exists users (
        email VARCHAR(255) PRIMARY KEY,
        created_at TIMESTAMP DEFAULT NOW()
    );

--     desc users
--     -> ;
-- +------------+--------------+------+-----+-------------------+-------------------+
-- | Field      | Type         | Null | Key | Default           | Extra             |
-- +------------+--------------+------+-----+-------------------+-------------------+
-- | email      | varchar(255) | NO   | PRI | NULL              |                   |
-- | created_at | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
-- +------------+--------------+------+-----+-------------------+-------------------+


INSERT INTO users (email) VALUES('Katie34@yahoo.com'), ('Tunde@gmail.com');

-- select date_format(min(created_at),'%M  %D  %Y') as earliest_date from users;
-- +-------------------+
-- | earliest_date     |
-- +-------------------+
-- | August  6th  2022 |
-- +-------------------+


-- select email,created_at from users where created_at=(select min(created_at) from users);
-- +-----------------------------+---------------------+
-- | email                       | created_at          |
-- +-----------------------------+---------------------+
-- | Hilario_Collins@hotmail.com | 2022-08-06 17:02:46 |
-- +-----------------------------+---------------------+

-- select monthname(created_at) as month ,count(*) as Count from users group by month order by Count desc;
-- +-----------+-------+
-- | month     | Count |
-- +-----------+-------+
-- | March     |    49 |
-- | September |    48 |
-- | February  |    47 |
-- | May       |    45 |
-- | January   |    44 |
-- | December  |    43 |
-- | October   |    42 |
-- | April     |    38 |
-- | August    |    38 |
-- | November  |    37 |
-- | July      |    36 |
-- | June      |    33 |
-- +-----------+-------+


-- select count(*) as yahoo_users from users where email like '%yahoo.com';
-- +-------------+
-- | yahoo_users |
-- +-------------+
-- |         151 |
-- +-------------+

-- SELECT CASE 
--        WHEN email LIKE '%@gmail.com' THEN 'gmail' 
--        WHEN email LIKE '%@yahoo.com' THEN 'yahoo' 
--        WHEN email LIKE '%@hotmail.com' THEN 'hotmail' 
--              ELSE 'other' 
--            end      AS provider, 
--            Count(*) AS total_users 
--     FROM   users 
--     GROUP  BY provider 
--     ORDER  BY total_users DESC;

-- +----------+-------------+
-- | provider | total_users |
-- +----------+-------------+
-- | hotmail  |         187 |
-- | gmail    |         162 |
-- | yahoo    |         151 |
-- +----------+-------------+



