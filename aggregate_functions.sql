CREATE TABLE books2 (
    book_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(100),
    author_fname VARCHAR(100),
    author_lname VARCHAR(100),
    released_year INT,
    stock_quantity INT,
    pages INT,
    PRIMARY KEY (book_id)
);

INSERT INTO books1 (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);
desc books1;
select * from books1;

INSERT INTO books1
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
           
           
           ############ COUNT #######
SELECT COUNT(*) FROM books1;
SELECT count(author_fname)  from books1;
SELECT COUNT(DISTINCT author_fname)from books1;

SELECT COUNT(author_lname) from books1;
SELECT count(DISTINCT author_lname) from books1;
SELECT count(DISTINCT author_lname, author_fname) from books1;

select title from books1 where title like "%the%";
select count(title) from books1 where title LIKE "%the%" ;

################ GROUP BY ###########
SELECT title,author_lname FROM books1;
SELECT title,author_lname FROM books1 GROUP BY author_lname;
SELECT author_lname, COUNT(*) FROM books1 GROUP BY author_lname;

select author_fname,author_lname, count(*) from books1 GROUP BY author_lname,author_fname;
select  released_year, count(*)
	from books1 GROUP BY released_year;


SELECT
upper( CONCAT("In ", released_year, " ", COUNT(*), " book(s) released."))
FROM books1
GROUP BY released_year;

SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released') AS year FROM books GROUP BY released_year;
###################  MİN MAX

SELECT MIN(released_year) from books1;

SELECT MIN(pages) from books1;
SELECT MAX(pages) from books1;

select max(pages), title from books1;
SELECT MIN(pages),title from books1;

SELECT * FROM books1 
WHERE pages = (SELECT Min(pages) 
                FROM books1); 

Select	title, pages from books1 where pages =(SELECT Min(pages) FROM books1);
SELECT title, pages, released_year from books1 WHERE pages =(SELECT max(pages) from books1);

SELECT * FROM books ORDER BY pages limit 1;
SELECT * from books order BY pages ASC limit 1;


####   MİN MAX USING WİTH GROUP BY^####

SELECT author_lname, author_fname,  Count(released_year), MIN(released_year), Max(released_year) from books1 
		GROUP BY author_lname, author_fname;
        
select concat(author_fname, "  ", author_lname)
		as author, max(released_year) as "last published booked" , 
		count(released_year) as " book count",
		concat("longest book page is ", Max(pages), " and name is ", title) as "longest book and name"  ,
		count(author_lname) , min(released_year) as "first published book"
		FROM books1 GROUP BY author_fname, author_lname;


####sum and average 

SELECT SUM(pages) from books1;

SELECT author_fname, author_lname, Sum(pages) from books1 GROUP BY author_fname, author_lname;

select avg(released_year) from books1;
select avg(pages) from books1;

select author_fname,author_lname, released_year, avg(stock_quantity), avg(pages) from books group by author_lname,author_fname;



