 SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;
 
 SELECT CONCAT('In ',released_year,' ', COUNT(*), ' books released.') AS Releases 
 FROM books GROUP BY released_year;
 
 SELECT * FROM books
 WHERE pages = (SELECT Min(pages)
                FROM books);


 SELECT title, pages FROM books
 WHERE pages = (SELECT Min(pages)
                FROM books);

SELECT * FROM books
ORDER BY pages ASC LIMIT 1;


SELECT title, pages FROM books
ORDER BY pages ASC LIMIT 1;


SELECT title, pages FROM books
ORDER BY pages DESC LIMIT 1;

SELECT author_fname,
       author_lname,
       MIN(released_year) AS 'First Release'
FROM books
GROUP BY author_fname, 
         author_lname;

SELECT author_fname, author_lname, Sum(pages)
FROM books
GROUP BY author_fname, author_lname;

SELECT author_fname, author_lname, Avg(pages)
FROM books
GROUP BY author_fname, author_lname;