select
    *
from
    students;

-- +----+------------+
-- | id | first_name |
-- +----+------------+
-- |  1 | Caleb      |
-- |  2 | Samantha   |
-- |  3 | Raj        |
-- |  4 | Carlos     |
-- |  5 | Lisa       |
-- +----+------------+
select
    *
from
    papers;

-- +---------------------------------------+-------+------------+
-- | title                                 | grade | student_id |
-- +---------------------------------------+-------+------------+
-- | My First Book Report                  |    60 |          1 |
-- | My Second Book Report                 |    75 |          1 |
-- | Russian Lit Through The Ages          |    94 |          2 |
-- | De Montaigne and The Art of The Essay |    98 |          2 |
-- | Borges and Magical Realism            |    89 |          4 |
-- +---------------------------------------+-------+------------+
select
    first_name,
    title,
    grade
from
    students
    join papers on students.id = papers.student_id;

-- +------------+---------------------------------------+-------+
-- | first_name | title                                 | grade |
-- +------------+---------------------------------------+-------+
-- | Caleb      | My First Book Report                  |    60 |
-- | Caleb      | My Second Book Report                 |    75 |
-- | Samantha   | Russian Lit Through The Ages          |    94 |
-- | Samantha   | De Montaigne and The Art of The Essay |    98 |
-- | Carlos     | Borges and Magical Realism            |    89 |
-- +------------+---------------------------------------+-------+
select
    first_name,
    title,
    grade
from
    students
    left join papers on students.id = papers.student_id;

-- +------------+---------------------------------------+-------+
-- | first_name | title                                 | grade |
-- +------------+---------------------------------------+-------+
-- | Caleb      | My First Book Report                  |    60 |
-- | Caleb      | My Second Book Report                 |    75 |
-- | Samantha   | Russian Lit Through The Ages          |    94 |
-- | Samantha   | De Montaigne and The Art of The Essay |    98 |
-- | Raj        | NULL                                  |  NULL |
-- | Carlos     | Borges and Magical Realism            |    89 |
-- | Lisa       | NULL                                  |  NULL |
-- +------------+---------------------------------------+-------+\


select
    first_name,
    ifnull(title, 'Missing'),
    ifnull(grade, 0)
from
    students
    left join papers on students.id = papers.student_id;
-- +------------+---------------------------------------+-----------------+
-- | first_name | ifnull(title,'Missing')               | ifnull(grade,0) |
-- +------------+---------------------------------------+-----------------+
-- | Caleb      | My First Book Report                  |              60 |
-- | Caleb      | My Second Book Report                 |              75 |
-- | Samantha   | Russian Lit Through The Ages          |              94 |
-- | Samantha   | De Montaigne and The Art of The Essay |              98 |
-- | Raj        | Missing                               |               0 |
-- | Carlos     | Borges and Magical Realism            |              89 |
-- | Lisa       | Missing                               |               0 |
-- +------------+---------------------------------------+-----------------+


select
    first_name,
    ifnull(avg(grade), 0) as average
from
    students
    left join papers on students.id = papers.student_id
group by
    first_name;
-- +------------+---------+
-- | first_name | average |
-- +------------+---------+
-- | Caleb      | 67.5000 |
-- | Samantha   | 96.0000 |
-- | Raj        |  0.0000 |
-- | Carlos     | 89.0000 |
-- | Lisa       |  0.0000 |
-- +------------+---------+


select
    first_name,
    ifnull(avg(grade), 0) as average,
case
        when avg(grade) >= 75 then 'passing'
        else 'failing'
    end as passing_status
from
    students
    left join papers on students.id = papers.student_id
group by
    first_name
order by
    avg(grade) desc;
-- +------------+---------+----------------+
-- | first_name | average | passing_status |
-- +------------+---------+----------------+
-- | Samantha   | 96.0000 | passing        |
-- | Carlos     | 89.0000 | passing        |
-- | Caleb      | 67.5000 | failing        |
-- | Raj        |  0.0000 | failing        |
-- | Lisa       |  0.0000 | failing        |
-- +------------+---------+----------------+