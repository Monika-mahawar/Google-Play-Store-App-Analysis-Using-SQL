 -- Category-Android Version Rating Analysis
 SELECT 
    Category, 'Android Ver', ROUND(AVG(Rating), 2) AS Avg_Rating
FROM
    googleplaystore
WHERE
    Rating IS NOT NULL
GROUP BY Category , 'Android Ver'
ORDER BY Category , Avg_Rating DESC;