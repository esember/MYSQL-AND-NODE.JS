INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

    # DISTINCT  ##############################
SELECT* from books;
SELECT title from books;

SELECT DISTINCT author_lname FROM books;
SELECT author_lname FROM books;


select DISTINCT book_id, title, author_fname, author_lname, released_year, stock_quantity, pages from books ;
SELECT released_year FROM books;
SELECT DISTINCT released_year FROM books;

SELECT DISTINCT(concat(author_fname," ",author_lname)) as name from books;
SELECT DISTINCT author_fname, author_lname  from books;
######################################

##### like

select title, author_fname FROM books where author_fname LIKE "%da%";
SELECT title, author_fname FROM books where	 author_fname LIKE "da%";

SELECT title, stock_quantity from  books;
select title, stock_quantity from books where stock_quantity LIKE "____";
SELECT title, stock_quantity from books where stock_quantity LIKE "__";
SELECT title, stock_quantity from books where title LIKE "%\%%";
SELECT title, stock_quantity from books where title LIKE "%\_%";
###ORDER BY #########################
SELECT author_lname FROM books;
SELECT author_lname FROM books ORDER BY author_lname;
SELECT title from books;

SELECT title from books ORDER BY title;

SELECT released_year FROM  books ORDER BY 1;
SELECT released_year from books order by 1 ASC;
SELECT released_year from books order by 1 desc;
SELECT title from books ORDER BY title DESC;

SELECT pages, released_year,title from books ORDER BY title,released_year, pages;

select title, author_fname, author_lname from books ORDER BY 1;
select title, author_fname, author_lname from books order by 2,1,3;
###############################
 ###LIMIT
 
 select title from books;
 SELECT title from books LIMIT 1;
 select	title from books limit 10;
 
 select * from books limit 2;
 
 SELECT title,released_year FROM books ORDER BY released_year DESC LIMIT 0, 11;
 
 select title from books limit 3, 2423424342424;
 
 select *from books;
  Select title from books distint ;
 



