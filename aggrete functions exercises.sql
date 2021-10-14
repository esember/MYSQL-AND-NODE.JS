SELECT count(title) from books1; ## how many books in database

#how many books were released each year

SELECT released_year, 
		count(released_year) from books1 group by released_year ORDER BY released_year;
        

        
        
####### the total number of books in stock

SELECT SUM(stock_quantity) from books1;

##  find the average released_year for each author

select author_fname, author_lname, avg(released_year) from books1 group by author_fname, author_lname;

##### find the full name of the author who wrote the lpngest book

SELECT CONCAT(author_fname, ' ', author_lname) FROM books
WHERE pages = (SELECT Max(pages) FROM books);
 
SELECT CONCAT(author_fname, ' ', author_lname) FROM books
ORDER BY pages DESC LIMIT 1;
 
SELECT pages, CONCAT(author_fname, ' ', author_lname) FROM books
ORDER BY pages DESC limit 1;

select title, concat(author_fname, "  ", author_lname) from books ORDER BY title limit 1;
########
SELECT released_year as year, 
		count(released_year) as "#books",  
        avg(pages) as "avg pages" from books1 group by released_year ORDER BY released_year;
        

SELECT * from books1;

