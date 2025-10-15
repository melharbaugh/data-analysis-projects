--length of longest title
SELECT TOP 1 LEN(title) as titlelength
FROM books 
ORDER BY titlelength DESC

--find the longest title
SELECT TOP 1 title
FROM books
WHERE LEN(title) = 186

--length of the shortest author name
SELECT TOP 1 LEN(authors) AS AuthorLength, authors
FROM books
ORDER BY AuthorLength 

--number of characters
SELECT TOP 1 authors
FROM books
WHERE LEN(authors) = 3

--number of title containing 'the'
SELECT COUNT(title) AS NumberOfThes
FROM books 
WHERE title LIKE '%the%'

--how many authors names start with 'Z'
SELECT COUNT(DISTINCT authors) AS NumberOfZ 
FROM books 
WHERE authors LIKE 'Z%'

--number of non English books
SELECT COUNT(title) AS NonEngBooks
FROM books
WHERE LEFT(language_code, 2) !='en'

--retry with substring
SELECT COUNT(title) AS NonEngBooks
FROM books
WHERE SUBSTRING(language_code, 1, 2) !='en'

--CONCAT title,length,authors
SELECT CONCAT(title,' by ',authors,' in ',language_code) AS BookInfo
FROM books
WHERE language_code is NULL

SELECT TOP 10 
title + ' by ' + authors + ' in ' + language_code + 'language.' AS BookNameWInfo
FROM books
WHERE language_code is NULL

--coalesce
SELECT CONCAT(title,' by ',authors,' in ', COALESCE(language_code, 'an unknown'),'language') AS BookInfo
FROM books
WHERE language_code IS NULL

SELECT TOP 10 
title + ' by ' + authors + ' in ' + coalesce(language_code, 'an unknown') + 'language.' AS BookNameWInfo
FROM books
WHERE language_code is NULL

--isnull
SELECT CONCAT(title,' by ',authors,' in ', ISNULL(language_code, 'an unknown'),'language') AS BookInfo
FROM books
WHERE language_code IS NULL


SELECT
title + ' by ' + authors + ' in ' + ISNULL(language_code, 'an unknown') + 'language.' AS BookNameWInfo
FROM books
WHERE language_code is NULL