--top 1000 rows from books table
SELECT TOP 1000*
FROM Books

--count the number of titles
SELECT COUNT(*) AS TitleCount
FROM Books

--count where books released <1800
SELECT COUNT(*) AS Before1800
FROM Books
WHERE original_publication_year <1800

--distinct authors
SELECT DISTINCT authors
FROM Books

--count of English books
SELECT COUNT(*) AS English
FROM Books
WHERE language_code = 'eng' OR language_code='en-'

--number of OG titles written between 1914-1921
SELECT COUNT(original_title) AS "WWI Era"
FROM Books
WHERE original_publication_year >=1914 AND original_publication_year <=1921

--top 1000 items ordered by tag_id
SELECT TOP 1000*
FROM book_tags
ORDER BY tag_id

--count number of goodreads_book_id grouped by tag_id
SELECT COUNT(goodreads_book_id) AS Goodreads 
FROM book_tags
GROUP BY tag_id

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Tags';

--top 1000 items in desc order
SELECT TOP 1000*
FROM ratings
ORDER BY book_id DESC

--total # users gave rating <2
SELECT COUNT(user_id) 
FROM ratings
WHERE rating <2

--sum of books having rating >=4
SELECT COUNT(DISTINCT book_id) AS HighRated
FROM ratings
WHERE rating >=4

--tag name decribes book as mystery
SELECT *
FROM tags
WHERE tag_name LIKE '%mystery%'

 SELECT *
    FROM BooksDB.dbo.tags
   WHERE tag_name < 'd' AND tag_name >= 'c';

   --use user-id to count total # of books each user wants to read. Print in ASC by user_id
   SELECT user_id, COUNT(*) AS "Total Books to Read"
   FROM to_read
   GROUP BY USER_ID
   ORDER BY [user_id]

   --same as above; sort by book_id in DESC order
   SELECT user_id, COUNT(book_id) AS "Total Books to Read"
   FROM to_read
   GROUP BY [user_id]
   ORDER BY [Total Books to Read] DESC

 
