-- Text we know if fixed len everytime ex. NY,CA,PA

CREATE TABLE inventory (
    item_name VARCHAR()
    price DECIMAL(8,2),
    quantity INT
    );
    
CREATE TABLE tweets(
    content VARCHAR(140),
    username VARCHAR(20),
    created_at TIMESTAMP DEFAULT NOW()
);
 
INSERT INTO tweets (content, username) VALUES('this is my first tweet', 'coltscat');
SELECT * FROM tweets;
 
INSERT INTO tweets (content, username) VALUES('this is my second tweet', 'coltscat');
SELECT * FROM tweets;