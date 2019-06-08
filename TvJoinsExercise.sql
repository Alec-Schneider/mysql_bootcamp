CREATE TABLE reviewers(
    id int AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
    );

CREATE TABLE series(
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    released_year YEAR(4),
    genre VARCHAR(100)
    );
    
CREATE TABLE reviews(
    id INT AUTO_INCREMENT PRIMARY KEY,
    rating DECIMAL(2,1),
    series_id INT,
    reviewer_id INT,
    FOREIGN KEY(series_id) REFERENCES series(id),
    FOREIGN KEY(reviewer_id) REFERENCES reviewers(id)
    );
    
SELECT 
    title,
    AVG(rating) AS avg_rating
FROM series
JOIN reviews
    ON reviews.series_id = series.id
GROUP BY series.id
ORDER BY avg_rating; 


SELECT
    first_name,
    last_name,
    AVG(rating) as
FROM reviewers
JOIN reviews
    ON reviewers.id = reviews.reviewer_id;

SELECT
    first_name,
    last_name,
    rating
FROM reviewers
JOIN reviews
    ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;


SELECT 
    title AS unreviewed_series
FROM series
LEFT JOIN reviews
    ON series.id = reviews.series_id
WHERE rating IS NULL
;

SELECT
    genre,
    ROUND(AVG(rating), 2) AS avg_rating
FROM series
JOIN reviews
    ON series.id = reviews.series_id
GROUP BY genre
ORDER BY genre;

SELECT
    first_name,
    last_name,
    IFNULL(COUNT(rating), 0) AS COUNT,
    IFNULL(MIN(rating), 0) AS MIN,
    IFNULL(MAX(rating), 0) AS MAX,
    IFNULL(ROUND(AVG(rating), 2), 0) AS AVG,
    CASE
        WHEN COUNT(rating) >= 10 THEN 'POWER USER' 
        WHEN COUNT(rating) >= 1 THEN 'ACTIVE'
        ELSE 'INACTIVE'
    END AS STATUS
FROM reviewers
LEFT JOIN reviews
    ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;


SELECT 
    title,
    rating,
    CONCAT(first_name, ' ', last_name) AS reviewer
FROM series
JOIN reviews
    ON series.id = reviews.series_id
JOIN reviewers
    ON reviews.reviewer_id = reviewers.id
ORDER BY title
;
    