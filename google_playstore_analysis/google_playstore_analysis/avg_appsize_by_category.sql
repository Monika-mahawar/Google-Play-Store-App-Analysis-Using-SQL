-- Average App Size by Category (in MB)
SELECT 
    Category,
    AVG(CAST(REPLACE(Size, 'M', '') AS DECIMAL (10 , 2 ))) AS Avg_Size_MB
FROM
    googleplaystore
WHERE
    Size LIKE '%M%'
GROUP BY Category;