SELECT *from books;
select  title from books where title Like "stories%";
select title, pages from books order by pages desc limit 1;
select title, author_lname from books where author_lname like "% %";
SELECT title, released_year, stock_quantity from books order by stock_quantity limit 3;