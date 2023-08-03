select
    ucase(
        reverse('Why does the cat look at me with such hatred?')
    ) 
-- +-----------------------------------------------------------------+
-- | ucase(reverse('Why does the cat look at me with such hatred?')) |
-- +-----------------------------------------------------------------+
-- | ?DERTAH HCUS HTIW EM TA KOOL TAC EHT SEOD YHW                   |
-- +-----------------------------------------------------------------+


select
    replace(title, ' ', '->')
from
    books;
-- +--------------------------------------------------------------+
-- | replace(title, ' ', '->')                                    |
-- +--------------------------------------------------------------+
-- | The->Namesake                                                |
-- | Norse->Mythology                                             |
-- | American->Gods                                               |
-- | Interpreter->of->Maladies                                    |
-- | A->Hologram->for->the->King:->A->Novel                       |
-- | The->Circle                                                  |
-- | The->Amazing->Adventures->of->Kavalier->&->Clay              |
-- | Just->Kids                                                   |
-- | A->Heartbreaking->Work->of->Staggering->Genius               |
-- | Coraline                                                     |
-- | What->We->Talk->About->When->We->Talk->About->Love:->Stories |
-- | Where->I'm->Calling->From:->Selected->Stories                |
-- | White->Noise                                                 |
-- | Cannery->Row                                                 |
-- | Oblivion:->Stories                                           |
-- | Consider->the->Lobster                                       |
-- +--------------------------------------------------------------+


select
    author_lname as forwards,
    reverse(author_lname) as backwards
from
    books;
-- +----------------+----------------+
-- | forwards       | backwards      |
-- +----------------+----------------+
-- | Lahiri         | irihaL         |
-- | Gaiman         | namiaG         |
-- | Gaiman         | namiaG         |
-- | Lahiri         | irihaL         |
-- | Eggers         | sreggE         |
-- | Eggers         | sreggE         |
-- | Chabon         | nobahC         |
-- | Smith          | htimS          |
-- | Eggers         | sreggE         |
-- | Gaiman         | namiaG         |
-- | Carver         | revraC         |
-- | Carver         | revraC         |
-- | DeLillo        | olliLeD        |
-- | Steinbeck      | kcebnietS      |
-- | Foster Wallace | ecallaW retsoF |
-- | Foster Wallace | ecallaW retsoF |
-- +----------------+----------------+


select
    ucase(concat(author_fname, ' ', author_lname)) as 'full name in caps'
from
    books;
-- +----------------------+
-- | full name in caps    |
-- +----------------------+
-- | JHUMPA LAHIRI        |
-- | NEIL GAIMAN          |
-- | NEIL GAIMAN          |
-- | JHUMPA LAHIRI        |
-- | DAVE EGGERS          |
-- | DAVE EGGERS          |
-- | MICHAEL CHABON       |
-- | PATTI SMITH          |
-- | DAVE EGGERS          |
-- | NEIL GAIMAN          |
-- | RAYMOND CARVER       |
-- | RAYMOND CARVER       |
-- | DON DELILLO          |
-- | JOHN STEINBECK       |
-- | DAVID FOSTER WALLACE |
-- | DAVID FOSTER WALLACE |


select
    concat(title, ' was released in ', released_year) as blurb
from
    books;
-- +--------------------------------------------------------------------------+
-- | blurb                                                                    |
-- +--------------------------------------------------------------------------+
-- | The Namesake was released in 2003                                        |
-- | Norse Mythology was released in 2016                                     |
-- | American Gods was released in 2001                                       |
-- | Interpreter of Maladies was released in 1996                             |
-- | A Hologram for the King: A Novel was released in 2012                    |
-- | The Circle was released in 2013                                          |
-- | The Amazing Adventures of Kavalier & Clay was released in 2000           |
-- | Just Kids was released in 2010                                           |
-- | A Heartbreaking Work of Staggering Genius was released in 2001           |
-- | Coraline was released in 2003                                            |
-- | What We Talk About When We Talk About Love: Stories was released in 1981 |
-- | Where I'm Calling From: Selected Stories was released in 1989            |
-- | White Noise was released in 1985                                         |
-- | Cannery Row was released in 1945                                         |
-- | Oblivion: Stories was released in 2004                                   |
-- | Consider the Lobster was released in 2005                                |
-- +--------------------------------------------------------------------------+


select
    title,
    char_length(title) as 'character count'
from
    books;
-- +-----------------------------------------------------+-----------------+
-- | title                                               | character count |
-- +-----------------------------------------------------+-----------------+
-- | The Namesake                                        |              12 |
-- | Norse Mythology                                     |              15 |
-- | American Gods                                       |              13 |
-- | Interpreter of Maladies                             |              23 |
-- | A Hologram for the King: A Novel                    |              32 |
-- | The Circle                                          |              10 |
-- | The Amazing Adventures of Kavalier & Clay           |              41 |
-- | Just Kids                                           |               9 |
-- | A Heartbreaking Work of Staggering Genius           |              41 |
-- | Coraline                                            |               8 |
-- | What We Talk About When We Talk About Love: Stories |              51 |
-- | Where I'm Calling From: Selected Stories            |              40 |
-- | White Noise                                         |              11 |
-- | Cannery Row                                         |              11 |
-- | Oblivion: Stories                                   |              17 |
-- | Consider the Lobster                                |              20 |
-- +-----------------------------------------------------+-----------------+


select
    concat(substr(title, 1, 10), '...') as 'short title',
    concat(author_lname, ',', author_fname) as author,
    concat(stock_quantity, ' in stock')
from
    books;
-- +---------------+----------------------+------------------------------------+
-- | short title   | author               | concat(stock_quantity,' in stock') |
-- +---------------+----------------------+------------------------------------+
-- | The Namesa... | Lahiri,Jhumpa        | 32 in stock                        |
-- | Norse Myth... | Gaiman,Neil          | 43 in stock                        |
-- | American G... | Gaiman,Neil          | 12 in stock                        |
-- | Interprete... | Lahiri,Jhumpa        | 97 in stock                        |
-- | A Hologram... | Eggers,Dave          | 154 in stock                       |
-- | The Circle... | Eggers,Dave          | 26 in stock                        |
-- | The Amazin... | Chabon,Michael       | 68 in stock                        |
-- | Just Kids...  | Smith,Patti          | 55 in stock                        |
-- | A Heartbre... | Eggers,Dave          | 104 in stock                       |
-- | Coraline...   | Gaiman,Neil          | 100 in stock                       |
-- | What We Ta... | Carver,Raymond       | 23 in stock                        |
-- | Where I'm ... | Carver,Raymond       | 12 in stock                        |
-- | White Nois... | DeLillo,Don          | 49 in stock                        |
-- | Cannery Ro... | Steinbeck,John       | 95 in stock                        |
-- | Oblivion: ... | Foster Wallace,David | 172 in stock                       |
-- | Consider t... | Foster Wallace,David | 92 in stock                        |
-- +---------------+----------------------+------------------------------------+


select
    title
from
    books
where
    title like "%stories%";
-- +-----------------------------------------------------+
-- | title                                               |
-- +-----------------------------------------------------+
-- | What We Talk About When We Talk About Love: Stories |
-- | Where I'm Calling From: Selected Stories            |
-- | Oblivion: Stories                                   |
-- +-----------------------------------------------------+


select
    title,
    pages
from
    books
order by
    pages desc
limit
    1;
-- +-------------------------------------------+-------+
-- | title                                     | pages |
-- +-------------------------------------------+-------+
-- | The Amazing Adventures of Kavalier & Clay |   634 |
-- +-------------------------------------------+-------+


select
    concat(title, ' - ', released_year) as summary
from
    books
order by
    released_year desc
limit
    3;
-- +-----------------------------+
-- | summary                     |
-- +-----------------------------+
-- | Lincoln In The Bardo - 2017 |
-- | Norse Mythology - 2016      |
-- | 10% Happier - 2014          |
-- +-----------------------------+


select
    title,
    author_lname
from
    books
where
    author_lname like "% %";
-- +----------------------+----------------+
-- | title                | author_lname   |
-- +----------------------+----------------+
-- | Oblivion: Stories    | Foster Wallace |
-- | Consider the Lobster | Foster Wallace |
-- +----------------------+----------------+

select
    title,
    released_year,
    stock_quantity
from
    books
order by
    stock_quantity
limit
    3;
-- +-----------------------------------------------------+---------------+----------------+
-- | title                                               | released_year | stock_quantity |
-- +-----------------------------------------------------+---------------+----------------+
-- | Where I'm Calling From: Selected Stories            |          1989 |             12 |
-- | American Gods                                       |          2001 |             12 |
-- | What We Talk About When We Talk About Love: Stories |          1981 |             23 |
-- +-----------------------------------------------------+---------------+----------------+


select
    title,
    author_lname
from
    books
order by
    author_lname,
    title;
-- +-----------------------------------------------------+----------------+
-- | title                                               | author_lname   |
-- +-----------------------------------------------------+----------------+
-- | What We Talk About When We Talk About Love: Stories | Carver         |
-- | Where I'm Calling From: Selected Stories            | Carver         |
-- | The Amazing Adventures of Kavalier & Clay           | Chabon         |
-- | White Noise                                         | DeLillo        |
-- | A Heartbreaking Work of Staggering Genius           | Eggers         |
-- | A Hologram for the King: A Novel                    | Eggers         |
-- | The Circle                                          | Eggers         |
-- | Consider the Lobster                                | Foster Wallace |
-- | Oblivion: Stories                                   | Foster Wallace |
-- | American Gods                                       | Gaiman         |
-- | Coraline                                            | Gaiman         |
-- | Norse Mythology                                     | Gaiman         |
-- | 10% Happier                                         | Harris         |
-- | fake_book                                           | Harris         |
-- | Interpreter of Maladies                             | Lahiri         |
-- | The Namesake                                        | Lahiri         |
-- | Lincoln In The Bardo                                | Saunders       |
-- | Just Kids                                           | Smith          |
-- | Cannery Row                                         | Steinbeck      |
-- +-----------------------------------------------------+----------------+


select
    ucase(
        concat(
            'MY FAVOURITE AUTHOR IS ',
            author_fname,
            ' ',
            author_lname,
            '!'
        )
    ) as yell
from
    books
order by
    author_lname;
-- +---------------------------------------------+
-- | yell                                        |
-- +---------------------------------------------+
-- | MY FAVOURITE AUTHOR IS RAYMOND CARVER!       |
-- | MY FAVOURITE AUTHOR IS RAYMOND CARVER!       |
-- | MY FAVOURITE AUTHOR IS MICHAEL CHABON!       |
-- | MY FAVOURITE AUTHOR IS DON DELILLO!          |
-- | MY FAVOURITE AUTHOR IS DAVE EGGERS!          |
-- | MY FAVOURITE AUTHOR IS DAVE EGGERS!          |
-- | MY FAVOURITE AUTHOR IS DAVE EGGERS!          |
-- | MY FAVOURITE AUTHOR IS DAVID FOSTER WALLACE! |
-- | MY FAVOURITE AUTHOR IS DAVID FOSTER WALLACE! |
-- | MY FAVOURITE AUTHOR IS NEIL GAIMAN!          |
-- | MY FAVOURITE AUTHOR IS NEIL GAIMAN!          |
-- | MY FAVOURITE AUTHOR IS NEIL GAIMAN!          |
-- | MY FAVOURITE AUTHOR IS DAN HARRIS!           |
-- | MY FAVOURITE AUTHOR IS FREIDA HARRIS!        |
-- | MY FAVOURITE AUTHOR IS JHUMPA LAHIRI!        |
-- | MY FAVOURITE AUTHOR IS JHUMPA LAHIRI!        |
-- | MY FAVOURITE AUTHOR IS GEORGE SAUNDERS!      |
-- | MY FAVOURITE AUTHOR IS PATTI SMITH!          |
-- | MY FAVOURITE AUTHOR IS JOHN STEINBECK!       |
-- +---------------------------------------------+


select
    count(*)
from
    books;
-- +----------+
-- | count(*) |
-- +----------+
-- |       19 |
-- +----------+


select
    released_year,
    count(*)
from
    books
group by
    released_year;
-- +---------------+----------+
-- | released_year | count(*) |
-- +---------------+----------+
-- |          2003 |        2 |
-- |          2016 |        1 |
-- |          2001 |        3 |
-- |          1996 |        1 |
-- |          2012 |        1 |
-- |          2013 |        1 |
-- |          2000 |        1 |
-- |          2010 |        1 |
-- |          1981 |        1 |
-- |          1989 |        1 |
-- |          1985 |        1 |
-- |          1945 |        1 |
-- |          2004 |        1 |
-- |          2005 |        1 |
-- |          2014 |        1 |
-- |          2017 |        1 |
-- +---------------+----------+


select
    sum(stock_quantity)
from
    books;
-- +---------------------+
-- | sum(stock_quantity) |
-- +---------------------+
-- |                2450 |
-- +---------------------+


select
    author_fname,
    author_lname,
    avg(released_year)
from
    books
group by
    author_lname,
    author_fname;
-- +--------------+----------------+--------------------+
-- | author_fname | author_lname   | avg(released_year) |
-- +--------------+----------------+--------------------+
-- | Jhumpa       | Lahiri         |          1999.5000 |
-- | Neil         | Gaiman         |          2006.6667 |
-- | Dave         | Eggers         |          2008.6667 |
-- | Michael      | Chabon         |          2000.0000 |
-- | Patti        | Smith          |          2010.0000 |
-- | Raymond      | Carver         |          1985.0000 |
-- | Don          | DeLillo        |          1985.0000 |
-- | John         | Steinbeck      |          1945.0000 |
-- | David        | Foster Wallace |          2004.5000 |
-- | Dan          | Harris         |          2014.0000 |
-- | Freida       | Harris         |          2001.0000 |
-- | George       | Saunders       |          2017.0000 |
-- +--------------+----------------+--------------------+


select
    concat(author_fname, ' ', author_lname) as author,
    pages
from
    books
where
    pages =(
        select
            max(pages)
        from
            books
    );
-- +----------------+-------+
-- | author         | pages |
-- +----------------+-------+
-- | Michael Chabon |   634 |
-- +----------------+-------+


select
    released_year as year,
    count(*) as '# of books',
    avg(pages) as 'avg pages'
from
    books
group by
    released_year
order by
    released_year;
-- +------+------------+-----------+
-- | year | # of books | avg pages |
-- +------+------------+-----------+
-- | 1945 |          1 |  181.0000 |
-- | 1981 |          1 |  176.0000 |
-- | 1985 |          1 |  320.0000 |
-- | 1989 |          1 |  526.0000 |
-- | 1996 |          1 |  198.0000 |
-- | 2000 |          1 |  634.0000 |
-- | 2001 |          3 |  443.3333 |
-- | 2003 |          2 |  249.5000 |
-- | 2004 |          1 |  329.0000 |
-- | 2005 |          1 |  343.0000 |
-- | 2010 |          1 |  304.0000 |
-- | 2012 |          1 |  352.0000 |
-- | 2013 |          1 |  504.0000 |
-- | 2014 |          1 |  256.0000 |
-- | 2016 |          1 |  304.0000 |
-- | 2017 |          1 |  367.0000 |
-- +------+------------+-----------+


select curdate();
-- +------------+
-- | curdate()  |
-- +------------+
-- | 2023-08-03 |
-- +------------+


select curtime();
-- +-----------+
-- | curtime() |
-- +-----------+
-- | 12:39:28  |
-- +-----------+


select now();
-- +---------------------+
-- | now()               |
-- +---------------------+
-- | 2023-08-03 12:38:41 |
-- +---------------------+


select
    dayofweek(curdate());
-- +----------------------+
-- | dayofweek(curdate()) |
-- +----------------------+
-- |                    5 |
-- +----------------------+


select
    dayname(curdate());
-- +--------------------+
-- | dayname(curdate()) |
-- +--------------------+
-- | Thursday           |
-- +--------------------+

select
    date_format(curdate(), '%m/%d/%y');
-- +-----------------------------------+
-- | date_format(curdate(),'%m/%d/%y') |
-- +-----------------------------------+
-- | 08/03/23                           |
-- +-----------------------------------+


select
    date_format(now(), '%b %D at %H:%i');
-- +-------------------------------------+
-- | date_format(now(),'%b %D at %H:%i') |
-- +-------------------------------------+
-- | Aug 3rd at 12:55                    |
-- +-------------------------------------+


create table tweets(
    tweet_content varchar(100),
    username varchar(20),
    created_time timestamp default current_timestamp
    );
-- Query OK, 0 rows affected (0.05 sec)


 DESC tweets
    -> ;
-- +---------------+--------------+------+-----+-------------------+-------------------+
-- | Field         | Type         | Null | Key | Default           | Extra             |
-- +---------------+--------------+------+-----+-------------------+-------------------+
-- | tweet_content | varchar(100) | YES  |     | NULL              |                   |
-- | username      | varchar(20)  | YES  |     | NULL              |                   |
-- | created_time  | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
-- +---------------+--------------+------+-----+-------------------+-------------------+

 select 10!=10;
-- +--------+
-- | 10!=10 |
-- +--------+
-- |      0 |
-- +--------+

select
    15 > 14
    and 99 -5 <= 94;
-- +--------------------+
-- | 15>14 and 99-5<=94 |
-- +--------------------+
-- |                  1 |
-- +--------------------+


select
    1 in (5, 3)
    or 9 between 8
    and 10;
-- +----------------------------------+
-- | 1 in (5,3) or 9 between 8 and 10 |
-- +----------------------------------+
-- |                                1 |
-- +----------------------------------+


select
    title,
    released_year
from
    books
where
    released_year < 1980;
-- +-------------+---------------+
-- | title       | released_year |
-- +-------------+---------------+
-- | Cannery Row |          1945 |
-- +-------------+---------------+


select
    title,
    author_lname
from
    books
where
    author_lname = 'Eggers'
    or author_lname = 'chabon';
-- +-------------------------------------------+--------------+
-- | title                                     | author_lname |
-- +-------------------------------------------+--------------+
-- | A Hologram for the King: A Novel          | Eggers       |
-- | The Circle                                | Eggers       |
-- | The Amazing Adventures of Kavalier & Clay | Chabon       |
-- | A Heartbreaking Work of Staggering Genius | Eggers       |
-- +-------------------------------------------+--------------+

select
    title,
    author_lname,
    released_year
from
    books
where
    author_lname = 'lahiri'
    and released_year > 2000;
-- +--------------+--------------+---------------+
-- | title        | author_lname | released_year |
-- +--------------+--------------+---------------+
-- | The Namesake | Lahiri       |          2003 |
-- +--------------+--------------+---------------+

select
    title,
    author_lname,
    released_year,
    pages
from
    books
where
    pages between 100
    and 200;
-- +-----------------------------------------------------+--------------+---------------+-------+
-- | title                                               | author_lname | released_year | pages |
-- +-----------------------------------------------------+--------------+---------------+-------+
-- | Interpreter of Maladies                             | Lahiri       |          1996 |   198 |
-- | What We Talk About When We Talk About Love: Stories | Carver       |          1981 |   176 |
-- | Cannery Row                                         | Steinbeck    |          1945 |   181 |
-- +-----------------------------------------------------+--------------+---------------+-------+


select
    title,
    author_lname
from
    books
where
    author_lname like 'c%'
    or author_lname like 'S%';

select
    *
from
    books
where
    substr(author_lname, 1, 1) in ('c', 's');
-- +-----------------------------------------------------+--------------+
-- | title                                               | author_lname |
-- +-----------------------------------------------------+--------------+
-- | The Amazing Adventures of Kavalier & Clay           | Chabon       |
-- | Just Kids                                           | Smith        |
-- | What We Talk About When We Talk About Love: Stories | Carver       |
-- | Where I'm Calling From: Selected Stories            | Carver       |
-- | Cannery Row                                         | Steinbeck    |
-- | Lincoln In The Bardo                                | Saunders     |
-- +-----------------------------------------------------+--------------+


select title, author_lname,  
case 
    when title like '%stories%' then 'Short Stories' 
    when title like '%Just Kids%' or title like '%A Heartbreaking Work%' then 'Memoir' 
    else 'novel' 
end as type 
from books;
-- +-----------------------------------------------------+----------------+---------------+
-- | title                                               | author_lname   | type          |
-- +-----------------------------------------------------+----------------+---------------+
-- | The Namesake                                        | Lahiri         | novel         |
-- | Norse Mythology                                     | Gaiman         | novel         |
-- | American Gods                                       | Gaiman         | novel         |
-- | Interpreter of Maladies                             | Lahiri         | novel         |
-- | A Hologram for the King: A Novel                    | Eggers         | novel         |
-- | The Circle                                          | Eggers         | novel         |
-- | The Amazing Adventures of Kavalier & Clay           | Chabon         | novel         |
-- | Just Kids                                           | Smith          | Memoir        |
-- | A Heartbreaking Work of Staggering Genius           | Eggers         | Memoir        |
-- | Coraline                                            | Gaiman         | novel         |
-- | What We Talk About When We Talk About Love: Stories | Carver         | Short Stories |
-- | Where I'm Calling From: Selected Stories            | Carver         | Short Stories |
-- | White Noise                                         | DeLillo        | novel         |
-- | Cannery Row                                         | Steinbeck      | novel         |
-- | Oblivion: Stories                                   | Foster Wallace | Short Stories |
-- | Consider the Lobster                                | Foster Wallace | novel         |
-- | 10% Happier                                         | Harris         | novel         |
-- | fake_book                                           | Harris         | novel         |
-- | Lincoln In The Bardo                                | Saunders       | novel         |
-- +-----------------------------------------------------+----------------+---------------+


select
    author_fname,
    author_lname,
    concat(count(*), ' books') as count
from
    books
group by
    author_lname,
    author_fname;
-- +--------------+----------------+---------+
-- | author_fname | author_lname   | count   |
-- +--------------+----------------+---------+
-- | Jhumpa       | Lahiri         | 2 books |
-- | Neil         | Gaiman         | 3 books |
-- | Dave         | Eggers         | 3 books |
-- | Michael      | Chabon         | 1 books |
-- | Patti        | Smith          | 1 books |
-- | Raymond      | Carver         | 2 books |
-- | Don          | DeLillo        | 1 books |
-- | John         | Steinbeck      | 1 books |
-- | David        | Foster Wallace | 2 books |
-- | Dan          | Harris         | 1 books |
-- | Freida       | Harris         | 1 books |
-- | George       | Saunders       | 1 books |
-- +--------------+----------------+---------+