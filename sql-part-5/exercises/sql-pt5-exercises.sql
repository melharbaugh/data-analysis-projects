--Softball jerseys
CREATE TABLE melanie_harbaugh.planned_makes (
    JerseySize varchar(5),
    JerseyNumber int,
    LastName VARCHAR(25)
)

--melanie_harbaugh.planned_makes
--add 3 rows
INSERT INTO melanie_harbaugh.planned_makes
VALUES 
    ('L', 23, 'Higley'),
    ('XL', 16, 'Robbins'),
    ('XL', 8, 'Marlowe')

--change values
UPDATE melanie_harbaugh.planned_makes
SET JerseyNumber = 12
WHERE LastName = 'Marlowe' 

--remove row
DELETE FROM melanie_harbaugh.planned_makes WHERE LastName = 'Higley'

--delete table
DROP melanie_harbaugh.planned_makes