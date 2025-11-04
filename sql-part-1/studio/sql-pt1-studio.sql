SELECT TOP 100 book_id, authors, title, average_rating AS rating  
FROM books  
ORDER BY rating DESC

SELECT TOP 100 book_id, authors, title, average_rating AS rating  
FROM books  
ORDER BY rating

SELECT TOP 1 *
FROM book_tags
ORDER BY count DESC

SELECT TOP 1 tag_name
FROM tags
WHERE tag_id = 30574

SELECT COUNT (id) AS Published
FROM books
WHERE original_publication_year >= 2000
    AND original_publication_year <= 2010

SELECT COUNT(id) AS happy
FROM books
WHERE title LIKE '%happy%'


SELECT TOP 3 title, authors, average_rating
FROM books
ORDER BY average_rating DESC