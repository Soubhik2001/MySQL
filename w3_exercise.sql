create table countries(
    country_id int primary key auto_increment,
    country_name varchar(10),
    region_id int
);
desc countries;
-- +--------------+-------------+------+-----+---------+----------------+
-- | Field        | Type        | Null | Key | Default | Extra          |
-- +--------------+-------------+------+-----+---------+----------------+
-- | country_id   | int         | NO   | PRI | NULL    | auto_increment |
-- | country_name | varchar(10) | YES  |     | NULL    |                |
-- | region_id    | int         | YES  |     | NULL    |                |
-- +--------------+-------------+------+-----+---------+----------------+


CREATE TABLE IF NOT EXISTS countries ( 
    country_id int primary key auto_increment,
    country_name varchar(10),
    region_id int
);
desc countries;
-- +--------------+-------------+------+-----+---------+----------------+
-- | Field        | Type        | Null | Key | Default | Extra          |
-- +--------------+-------------+------+-----+---------+----------------+
-- | country_id   | int         | NO   | PRI | NULL    | auto_increment |
-- | country_name | varchar(10) | YES  |     | NULL    |                |
-- | region_id    | int         | YES  |     | NULL    |                |
-- +--------------+-------------+------+-----+---------+----------------+


create table if not exists dup_countries like countries;

desc dup_countries;
-- +--------------+-------------+------+-----+---------+----------------+
-- | Field        | Type        | Null | Key | Default | Extra          |
-- +--------------+-------------+------+-----+---------+----------------+
-- | country_id   | int         | NO   | PRI | NULL    | auto_increment |
-- | country_name | varchar(10) | YES  |     | NULL    |                |
-- | region_id    | int         | YES  |     | NULL    |                |
-- +--------------+-------------+------+-----+---------+----------------+


create table if not exists dup_countries as select * from countries;


CREATE TABLE IF countries ( 
    country_id int primary key auto_increment not null,
    country_name varchar(10) not null,
    region_id int not null
);

desc countries;
-- +--------------+-------------+------+-----+---------+----------------+
-- | Field        | Type        | Null | Key | Default | Extra          |
-- +--------------+-------------+------+-----+---------+----------------+
-- | country_id   | int         | NO   | PRI | NULL    | auto_increment |
-- | country_name | varchar(10) | NO   |     | NULL    |                |
-- | region_id    | int         | NO   |     | NULL    |                |
-- +--------------+-------------+------+-----+---------+----------------+


create table jobs(
    job_id int primary key auto_increment,
    job_title varchar(50) not null,
    min_salary int,
    max_salary int check constraint(max_salary>25000)
);

desc jobs;
-- +------------+-------------+------+-----+---------+----------------+
-- | Field      | Type        | Null | Key | Default | Extra          |
-- +------------+-------------+------+-----+---------+----------------+
-- | job_id     | int         | NO   | PRI | NULL    | auto_increment |
-- | job_title  | varchar(50) | NO   |     | NULL    |                |
-- | min_salary | int         | YES  |     | NULL    |                |
-- | max_salary | int         | YES  |     | NULL    |                |
-- +------------+-------------+------+-----+---------+----------------+


create table countries(
    country_id int primary key auto_increment,
    country_name varchar(50) not null check(country_name='India' or country_name='China' or country_name='Italy'),
    region_id int not null
);

--or
-- CREATE TABLE IF NOT EXISTS countries ( 
-- COUNTRY_ID varchar(2),
-- COUNTRY_NAME varchar(40)
-- CHECK(COUNTRY_NAME IN('Italy','India','China')) ,
-- REGION_ID decimal(10,0)
-- );

desc countries;
-- +--------------+-------------+------+-----+---------+----------------+
-- | Field        | Type        | Null | Key | Default | Extra          |
-- +--------------+-------------+------+-----+---------+----------------+
-- | country_id   | int         | NO   | PRI | NULL    | auto_increment |
-- | country_name | varchar(50) | NO   |     | NULL    |                |
-- | region_id    | int         | NO   |     | NULL    |                |
-- +--------------+-------------+------+-----+---------+----------------+
-- 3 rows in set (0.00 sec)

mysql> insert into countries(country_name,region_id) values('India',23);
-- Query OK, 1 row affected (0.02 sec)

mysql> insert into countries(country_name,region_id) values('Indiddda',23);
-- ERROR 3819 (HY000): Check constraint 'countries_chk_1' is violated.


create table job_history(
    employee_id int primary key auto_increment,
    start_date date not null,
    end_date date not null check(end_date like '--/--/----'),
    job_id int not null,
    dept_id int not null
);

desc job_history;
-- +-------------+------+------+-----+---------+----------------+
-- | Field       | Type | Null | Key | Default | Extra          |
-- +-------------+------+------+-----+---------+----------------+
-- | employee_id | int  | NO   | PRI | NULL    | auto_increment |
-- | start_date  | date | NO   |     | NULL    |                |
-- | end_date    | date | NO   |     | NULL    |                |
-- | job_id      | int  | NO   |     | NULL    |                |
-- | dept_id     | int  | NO   |     | NULL    |                |
-- +-------------+------+------+-----+---------+----------------+


create table jobs(
    job_id int primary key auto_increment,
    job_title varchar(50) not null Default ' ',
    min_salary int not null default 8000,
    max_salary int default null
);

desc jobs;
-- +------------+-------------+------+-----+---------+----------------+
-- | Field      | Type        | Null | Key | Default | Extra          |
-- +------------+-------------+------+-----+---------+----------------+
-- | job_id     | int         | NO   | PRI | NULL    | auto_increment |
-- | job_title  | varchar(50) | NO   |     |         |                |
-- | min_salary | int         | NO   |     | 8000    |                |
-- | max_salary | int         | YES  |     | NULL    |                |
-- +------------+-------------+------+-----+---------+----------------+


