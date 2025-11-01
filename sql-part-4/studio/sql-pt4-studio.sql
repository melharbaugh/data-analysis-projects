SELECT title, authors
FROM books
WHERE title NOT IN (
    SELECT title
    FROM books
    WHERE authors NOT LIKE '%,%'
)

--titles tagged meditation
SELECT tag_id  
FROM tags
WHERE tag_name LIKE '%Meditation%'

SELECT title
FROM books
WHERE book_id IN (
    SELECT goodreads_book_id
    FROM book_tags
    WHERE tag_id IN(
        SELECT tag_id
        FROM tags
        WHERE tag_name = 'Meditation'
    )
)    

--average rating >= 4,2
SELECT title, original_title, average_rating
FROM books
WHERE average_rating >= 4.2

EXCEPT

SELECT title, original_title, average_rating
FROM books
WHERE original_title IS NULL
    OR title <> original_title