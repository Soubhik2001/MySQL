desc employees;
-- +------------+-------------+------+-----+---------+----------------+
-- | Field      | Type        | Null | Key | Default | Extra          |
-- +------------+-------------+------+-----+---------+----------------+
-- | emp_no     | int         | NO   | PRI | NULL    | auto_increment |
-- | department | varchar(20) | YES  |     | NULL    |                |
-- | salary     | int         | YES  |     | NULL    |                |
-- +------------+-------------+------+-----+---------+----------------+


select * from employees;
-- +--------+------------------+--------+
-- | emp_no | department       | salary |
-- +--------+------------------+--------+
-- |      1 | engineering      |  80000 |
-- |      2 | engineering      |  69000 |
-- |      3 | engineering      |  70000 |
-- |      4 | engineering      | 103000 |
-- |      5 | engineering      |  67000 |
-- |      6 | engineering      |  89000 |
-- |      7 | engineering      |  91000 |
-- |      8 | sales            |  59000 |
-- |      9 | sales            |  70000 |
-- |     10 | sales            | 159000 |
-- |     11 | sales            |  72000 |
-- |     12 | sales            |  60000 |
-- |     13 | sales            |  61000 |
-- |     14 | sales            |  61000 |
-- |     15 | customer service |  38000 |
-- |     16 | customer service |  45000 |
-- |     17 | customer service |  61000 |
-- |     18 | customer service |  40000 |
-- |     19 | customer service |  31000 |
-- |     20 | customer service |  56000 |
-- |     21 | customer service |  55000 |
-- +--------+------------------+--------+


