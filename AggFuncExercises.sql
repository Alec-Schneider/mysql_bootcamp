

SELECT 
    released_year,
    COUNT(released_year)
FROM books
GROUP BY released_year;

SELECT
    author_fname,
    author_lname,
    Sum(stock_quantity)
FROM books
GROUP BY author_fname, author_lname;


SELECT 
    CONCAT(author_fname, ' ', author_lname),
    pages
FROM books
ORDER BY pages DESC LIMIT 1;


SELECT
    released_year AS year,
    COUNT(*)'# Books',
    Avg(pages)
FROM books
GROUP BY released_year
ORDER BY released_year ASC;

