SELECT DISTINCT author_fname FROM books;
SELECT DISTINCT author_lname FROM books;

SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 10;  

SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 0,5;

SELECT title, author_fname, author_lname FROM books WHERE author_fname LIKE '%da%';

SELECT title FROM books WHERE title LIKE '%the%';

SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____';