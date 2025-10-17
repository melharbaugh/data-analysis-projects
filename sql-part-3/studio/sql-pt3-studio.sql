SELECT *
FROM tags
WHERE tag_name LIKE '%woman%'


SELECT bt.tag_id, SUM(bt.count) AS tag_count, t.tag_name
FROM book_tags AS bt
JOIN tags AS t
ON bt.tag_id = t.tag_id
WHERE t.tag_name LIKE '%woman%' 
OR t.tag_name LIKE '%female%'
GROUP BY bt.tag_id, t.tag_name
HAVING SUM(bt.count) > 20 
ORDER BY tag_count DESC

--need authors, title, rating, and tag_id using 'gardening'
SELECT b.authors, b.title, b.average_rating, bt.tag_id
FROM books AS b     
JOIN book_tags as bt  
    ON b.best_book_id = bt.goodreads_book_id
JOIN tags AS t  
    ON t.tag_id = bt.tag_id
WHERE t.tag_name LIKE '%garden%'
ORDER BY b.average_rating DESC

SELECT *
FROM tags
WHERE tag_name LIKE '%garden%'





