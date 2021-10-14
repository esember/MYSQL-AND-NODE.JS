select database();
show DATABASES;
use cat_app_4;

SELECT * from books1;

select title, released_year from books1 where released_year = 2017;
select title, released_year from books1 where released_year =2013;
select title, released_year from books1 WHERE released_year != 2017;

select title, author_lname from books1 where author_lname = "Harris";
select title, author_lname from books1 where author_lname != "Harris";

select title from books where title like "W%";
SELECT title FROM books1 where title NOT LIKE "W%";

SELECT * from books1; 
SELECT book_id, title from books1 where book_id LIKE "3";
SELECT book_id, title FROM books1 where	book_id NOT LIKE "3";

SELECT book_id, title, released_year FROM books1 where released_year > 2000;
SELECT book_id, title, released_year FROM books1 where released_year >= 2000;
SELECT book_id, title, released_year FROM books1 where released_year < 2000;
SELECT book_id, title, released_year FROM books1 where released_year <= 2000;


select 99>1;
SELECT 100>101;
SELECT -15>15;
select 9>-10;
select 1>1;
select "a">"b";
SELECT "A">"a";

SELECT title, author_lname FROM books WHERE author_lname = 'Eggers';
 
SELECT title, author_lname FROM books WHERE author_lname = 'eggers';
 
SELECT title, author_lname FROM books WHERE author_lname = 'eGGers';

SELECT title, released_year from books where released_year < 2000 ORDER BY released_year ;
SELECT title, released_year from books where released_year < 2000 ;

SELECT title, released_year from books where released_year <= 2000 ORDER BY released_year;

select 3<-10;
select -10<-9;
SELECT 42 >=42;
SELECT "h" < "p";
select "Q"<="q";

SELECT * from books where author_lname = "Eggers";
select * from books where released_year >2010 ;

SELECT * from books  where author_lname ='Eggers' AND released_year >2010;

select 1<4 And 7=9;
select -10 >-20 && 0>=0;
select -40 <=-0 and	10>40;
select 54 <=54 && "a" ="A";

select *from books where author_lname = "Eggers" and released_year >2010 AND title like "%novel%";

SELECT * from books1 where author_lname ="Eggers" or released_year >2010;

select 40 <= 100 || -2 >0;
SELECT 10 >5 || 5=5;
SELECT "a" =5 || 3000 >2000;

SELECT * from books1 where author_lname ="eggers" or released_year >2000 and stock_quantity >100;

SELECT * from books1 where released_year BETWEEN  2004 and 2015;
SELECT * from books1 where released_year not BETWEEN  2004 and 2015;

SELECT CAST("2021-09-30" as Datetime);

select * from people where birthdt between "1982-01-01" and "1984-01-01";
select * from people where birthdt between "1979-01-01" and "1980-01-01";

SELECT 
   * 
FROM people
WHERE 
    birthdt BETWEEN CAST('1980-01-01' AS DATETIME)
    AND CAST('2000-01-01' AS DATETIME);
    
select title, author_lname from books 
			where author_lname="carver" Or
				  author_lname="lahiri" OR	
                  author_lname="Smith";
SELECT * from books1 where 
		 author_lname IN ("carver", "lahiri","smith");
         
SELECT *from books1 where     
		released_year NOT IN( 2000,2002,2004,2006,2008,2010,2012,2014,2016);
        
select *from books1 where 
		released_year >= 2000 And 
        released_year <=2006 and
        released_year  Not In (2000,2002,2004,2006) order by released_year ;
        
        
select * from books1 WHERE released_year >=2000 AND released_year % 2 != 0;
SELECT *from books1 WHERE released_year >=2000 and released_year % 2 = 1;

show databases;
use cat_app_4;
SELECT * ,
		CASE
		when stock_quantity BETWEEN 0 and 50 then "*"
        when stock_quantity between 51 and 100 then "**"
        else "***"
        end as stock
        from books1;
        
        
select *, 
        case
        when stock_quantity <=50 then "*"
        when stock_quantity  <= 100 then "**"
        when stock_quantity <=200 then "***"
        else "****"
        end as STOCK
        from books1;
        
        alter table books1 add  stock varchar(5);
        
        update books1 set STOCK=stock;
select title, stock from books1;


        
        
        
    
         