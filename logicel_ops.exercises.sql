SELECT * from books1


SELECT 10 != 10;
SELECT 15 > 14 AND	 99- 5 <=94;
SELECT 1 In (5,3) OR 9 BETWEEN 8 and 10;
SELECT 1 In (5,3);

select * from books1 where released_year < 1980;
select *from books1 where author_lname ="Eggers" or author_lname ="Chabon";

select * from books1 where author_lname ="Lahiri"  and released_year >2000;

select * from books1 where pages between 100 and 200 ;

select	* FROM books1
		where 
        author_lname LIKE "C%" 
		or author_lname  LIKE  "S%";
        
SELECT * from books1 where substr(author_lname,1,1) = "C" OR substr(author_lname,1,1) = "S";

select *,
	case 
    when title LIKE "%stories%"  then  "Short Stories"
    when title = "Just Kids" then "Memories"
    when title = "A Heartbreaking Work of Staggering Genius" then "Memories"
    else "Novel"
    end as Type
    from books1;
    
    
select *,
	case 
    when title LIKE "%stories%"  then  "Short Stories"
    when title = "Just Kids" or  "A Heartbreaking Work of Staggering Genius" then "Memories"
    else "Novel"
    end as Type
    from books1;
        
select author_fname, author_lname, 
        case 
        when count(author_lname) =2 then " 2 books"
        when count(author_lname)= 1 then " 1 book"
        else "3 books"
        end as COUNT
        from books1 group by author_lname;
        
select * , 
			case
            when  count(*) = 1 then " 1 book"
            else concat(count(*), " books")
            end as COUNT
            from books1 GROUP BY author_lname;
            
            
