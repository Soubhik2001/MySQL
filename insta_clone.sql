CREATE TABLE users (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);


desc users;
-- +------------+--------------+------+-----+-------------------+-------------------+
-- | Field      | Type         | Null | Key | Default           | Extra             |
-- +------------+--------------+------+-----+-------------------+-------------------+
-- | id         | int          | NO   | PRI | NULL              | auto_increment    |
-- | username   | varchar(255) | NO   | UNI | NULL              |                   |
-- | created_at | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
-- +------------+--------------+------+-----+-------------------+-------------------+


CREATE TABLE photos (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL,
    user_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id)
);

desc photos;
-- +------------+--------------+------+-----+-------------------+-------------------+
-- | Field      | Type         | Null | Key | Default           | Extra             |
-- +------------+--------------+------+-----+-------------------+-------------------+
-- | id         | int          | NO   | PRI | NULL              | auto_increment    |
-- | image_url  | varchar(255) | NO   |     | NULL              |                   |
-- | user_id    | int          | NO   | MUL | NULL              |                   |
-- | created_at | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
-- +------------+--------------+------+-----+-------------------+-------------------+


CREATE TABLE comments (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    comment_text VARCHAR(255) NOT NULL,
    photo_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    FOREIGN KEY(user_id) REFERENCES users(id)
);


desc photos;
-- +------------+--------------+------+-----+-------------------+-------------------+
-- | Field      | Type         | Null | Key | Default           | Extra             |
-- +------------+--------------+------+-----+-------------------+-------------------+
-- | id         | int          | NO   | PRI | NULL              | auto_increment    |
-- | image_url  | varchar(255) | NO   |     | NULL              |                   |
-- | user_id    | int          | NO   | MUL | NULL              |                   |
-- | created_at | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
-- +------------+--------------+------+-----+-------------------+-------------------+


CREATE TABLE likes (
    user_id INTEGER NOT NULL,
    photo_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    PRIMARY KEY(user_id, photo_id)
);


desc likes;
-- +------------+-----------+------+-----+-------------------+-------------------+
-- | Field      | Type      | Null | Key | Default           | Extra             |
-- +------------+-----------+------+-----+-------------------+-------------------+
-- | user_id    | int       | NO   | PRI | NULL              |                   |
-- | photo_id   | int       | NO   | PRI | NULL              |                   |
-- | created_at | timestamp | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
-- +------------+-----------+------+-----+-------------------+-------------------+


CREATE TABLE follows (
    follower_id INTEGER NOT NULL,
    followee_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(follower_id) REFERENCES users(id),
    FOREIGN KEY(followee_id) REFERENCES users(id),
    PRIMARY KEY(follower_id, followee_id)
);


desc follows;
-- +-------------+-----------+------+-----+-------------------+-------------------+
-- | Field       | Type      | Null | Key | Default           | Extra             |
-- +-------------+-----------+------+-----+-------------------+-------------------+
-- | follower_id | int       | NO   | PRI | NULL              |                   |
-- | followee_id | int       | NO   | PRI | NULL              |                   |
-- | created_at  | timestamp | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
-- +-------------+-----------+------+-----+-------------------+-------------------+


CREATE TABLE tags (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(255) UNIQUE,
    created_at TIMESTAMP DEFAULT NOW()
);
   

-- desc tags;
-- +------------+--------------+------+-----+-------------------+-------------------+
-- | Field      | Type         | Null | Key | Default           | Extra             |
-- +------------+--------------+------+-----+-------------------+-------------------+
-- | id         | int          | NO   | PRI | NULL              | auto_increment    |
-- | tag_name   | varchar(255) | YES  | UNI | NULL              |                   |
-- | created_at | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
-- +------------+--------------+------+-----+-------------------+-------------------+
   
   
   
CREATE TABLE photo_tags (
    photo_id INTEGER NOT NULL,
    tag_id INTEGER NOT NULL,
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    FOREIGN KEY(tag_id) REFERENCES tags(id),
    PRIMARY KEY(photo_id, tag_id)
);


desc photo_tags;
-- +----------+------+------+-----+---------+-------+
-- | Field    | Type | Null | Key | Default | Extra |
-- +----------+------+------+-----+---------+-------+
-- | photo_id | int  | NO   | PRI | NULL    |       |
-- | tag_id   | int  | NO   | PRI | NULL    |       |
-- +----------+------+------+-----+---------+-------+


--IG clone

--Oldest 5 users
select
    username,
    created_at
from
    users
order by
    created_at
limit
    5;
-- +------------------+---------------------+
-- | username         | created_at          |
-- +------------------+---------------------+
-- | Darby_Herzog     | 2016-05-06 00:14:21 |
-- | Emilio_Bernier52 | 2016-05-06 13:04:30 |
-- | Elenor88         | 2016-05-08 01:30:41 |
-- | Nicole71         | 2016-05-09 17:30:22 |
-- | Jordyn.Jacobson2 | 2016-05-14 07:56:26 |
-- +------------------+---------------------+


--day of the week most users register
select
    dayname(created_at) as day,
    count(*) as total
from
    users
group by
    day
order by
    total desc
limit
    2;
-- +----------+-------+
-- | day      | total |
-- +----------+-------+
-- | Thursday |    16 |
-- | Sunday   |    16 |
-- +----------+-------+


--users who never posted a photo
select
    username
from
    users
    left join photos on users.id = photos.user_id
where
    photos.id is null;
-- +---------------------+
-- | username            |
-- +---------------------+
-- | Aniya_Hackett       |
-- | Bartholome.Bernhard |
-- | Bethany20           |
-- | Darby_Herzog        |
-- | David.Osinski47     |
-- | Duane60             |
-- | Esmeralda.Mraz57    |
-- | Esther.Zulauf61     |
-- | Franco_Keebler64    |
-- | Hulda.Macejkovic    |
-- | Jaclyn81            |
-- | Janelle.Nikolaus81  |
-- | Jessyca_West        |
-- | Julien_Schmidt      |
-- | Kasandra_Homenick   |
-- | Leslie67            |
-- | Linnea59            |
-- | Maxwell.Halvorson   |
-- | Mckenna17           |
-- | Mike.Auer39         |
-- | Morgan.Kassulke     |
-- | Nia_Haag            |
-- | Ollie_Ledner37      |
-- | Pearl7              |
-- | Rocio33             |
-- | Tierra.Trantow      |
-- +---------------------+


--user with most likes on a single photo
SELECT 
    username,
    photos.id,
    photos.image_url, 
    COUNT(*) AS total
FROM photos
INNER JOIN likes
    ON likes.photo_id = photos.id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;
-- +---------------+-----+---------------------+-------+
-- | username      | id  | image_url           | total |
-- +---------------+-----+---------------------+-------+
-- | Zack_Kemmer93 | 145 | https://jarret.name |    48 |
-- +---------------+-----+---------------------+-------+


--no. of times avg user post
SELECT 
    (SELECT Count(*) FROM  photos) / (
    SELECT Count(*) FROM   users)
    AS avg; 
-- +--------+
-- | avg    |
-- +--------+
-- | 2.5700 |
-- +--------+

--top 5 most commonly used hashtags
select
    tags.tag_name,
    count(*) as total
from
    photo_tags
    join tags on photo_tags.tag_id = tags.id
group by
    tags.id
order by
    total desc
limit
    5;
-- +----------+-------+
-- | tag_name | total |
-- +----------+-------+
-- | smile    |    59 |
-- | beach    |    42 |
-- | party    |    39 |
-- | fun      |    38 |
-- | concert  |    24 |
-- +----------+-------+


--users who have liked every photo
SELECT username, 
        Count(*) AS num_likes 
FROM   users 
        INNER JOIN likes 
        ON users.id = likes.user_id 
GROUP  BY likes.user_id 
HAVING num_likes = (SELECT Count(*) FROM   photos); 
-- +--------------------+-----------+
-- | username           | num_likes |
-- +--------------------+-----------+
-- | Aniya_Hackett      |       257 |
-- | Bethany20          |       257 |
-- | Duane60            |       257 |
-- | Jaclyn81           |       257 |
-- | Janelle.Nikolaus81 |       257 |
-- | Julien_Schmidt     |       257 |
-- | Leslie67           |       257 |
-- | Maxwell.Halvorson  |       257 |
-- | Mckenna17          |       257 |
-- | Mike.Auer39        |       257 |
-- | Nia_Haag           |       257 |
-- | Ollie_Ledner37     |       257 |
-- | Rocio33            |       257 |
-- +--------------------+-----------+