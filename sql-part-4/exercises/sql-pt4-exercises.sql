--number of users who rated book above average rating
SELECT COUNT(*) AS above_average_count
FROM ratings AS r 
WHERE r.rating > (
        SELECT AVG(r2.rating)
        FROM ratings AS r2  
        WHERE r2.book_id = r.book_id
)  
GO   

--returns the book ids of all books that have over 1000 ratings of 1 star or over 1000 ratings of 5 stars
SELECT book_id
FROM ratings
WHERE rating = 1
GROUP BY book_id
HAVING COUNT(*) > 1000

UNION

SELECT book_id
FROM ratings
WHERE rating = 5
GROUP BY book_id
HAVING COUNT(*) > 1000

SELECT COUNT(*) AS rating1
FROM ratings
WHERE rating = 1

SELECT book_id, COUNT(*) AS one_star_count
FROM ratings
WHERE rating = 1
GROUP BY book_id
ORDER BY one_star_count DESC

SELECT book_id, COUNT(*) AS five_star_count
FROM ratings
WHERE rating = 5
GROUP BY book_id
ORDER BY five_star_count DESC

SELECT book_id
FROM ratings
WHERE rating = 1
GROUP BY book_id
HAVING COUNT(*) > 30

UNION

SELECT book_id
FROM ratings
WHERE rating = 5
GROUP BY book_id
HAVING COUNT(*) > 50

--returns the book ids of books that have a language code of "en-US" and not a langugae code of "en-GB"
SELECT book_id
FROM books
WHERE language_code = 'en-US'

EXCEPT

SELECT book_id
FROM books
WHERE language_code = 'en-GB'

--returns the names of the tags and the tag ids for tags that were used over 100,000 times for a book.
SELECT tag_id, tag_name
FROM tags
WHERE tag_id IN (
    SELECT tag_id
    FROM book_tags
    GROUP BY tag_id
    HAVING COUNT(*) > 10000)