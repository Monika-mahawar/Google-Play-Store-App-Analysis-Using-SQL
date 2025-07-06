-- Apps Exceeding 50 MB in Size
SELECT 
    App, Size
FROM
    googleplaystore
WHERE
    Size LIKE '%M%'
        AND CAST(REPLACE(Size, 'M', '') AS DECIMAL (10 , 2 )) > 50;