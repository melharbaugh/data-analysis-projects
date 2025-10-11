--return last 3 characters of bsae name
SELECT RIGHT(base_name, 3)
FROM other_FHV_services_jan_aug_2015

--return location of spaces in both columns
SELECT CHARINDEX(' ', Number_of_Trips) 
FROM other_FHV_services_jan_aug_2015

--display month of pickup date in DESC order
SELECT DATENAME(month, Pick_Up_Date) AS month
FROM other_FHV_services_jan_aug_2015
ORDER BY Pick_Up_Date DESC

--returns day number of pickup date and month name in ASC order
SELECT 
    DAY(Pick_Up_Date) AS DayNumber,
    DATENAME(month, Pick_Up_Date) AS MonthName
FROM other_FHV_services_jan_aug_2015
ORDER BY Pick_Up_Date

--most easterly Lyft pickup
SELECT MAX(start_lng) AS MostEasterly
FROM Lyft

--most northerly Lyft pickup
SELECT MAX(start_lat) AS MostNortherly
FROM Lyft

--connect base number and base name in string (base_number:base_name)
SELECT CONCAT_WS(':',base_number,base_name) AS BaseInfo
FROM other_FHV_services_jan_aug_2015