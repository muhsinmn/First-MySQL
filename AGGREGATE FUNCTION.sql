#COUNT
select count(*) FROM students;
SELECT count(distinct NAME,AGE) FROM students;
SELECT COUNT(*) FROM STUDENTS WHERE NAME LIKE '%SIN';

#MIN AND MAX
SELECT min(AGE) FROM students;
SELECT MAX(AGE) FROM students;

#SUB QUERY
SELECT NAME,AGE FROM students WHERE AGE=(SELECT MIN(AGE)
 FROM students);
 
 #MIN/,MAX GROUP BY
 SELECT AUTHOR_FNAME,AUTHOR_LNAME, MIN(RELEASED_YEAR) FROM BOOKS
 GROUP BY AUTHOR_FNAME,AUTHOR_LNAME; #group by released year
 
 select AUTHOR_FNAME,AUTHOR_LNAME, max(pages) from books
 group by AUTHOR_FNAME,AUTHOR_LNAME; #longest pages book of author
 
 select concat(AUTHOR_FNAME,'-' ,AUTHOR_LNAME)as author ,max(pages) as 'no of pages'
 from books group by author;
 
 #SUM
 SELECT SUM(PAGES) FROM BOOKS;
 
 SELECT concat(author_fname, '-', author_lname) as author,
 sum(pages) as totalp from books group by author;
 
 #avg
 select avg(pages) from books;
 select released_year, avg(stock_quantity) from books
 group by released_year;
 
 select author_fname,author_lname, avg(pages) from books
 group by author_fname,author_lname;
 
 select pages, concat(author_fname,' ',author_lname) as author from books
 where pages=(select max(pages) from books);
 
 select stock_quantity from books;