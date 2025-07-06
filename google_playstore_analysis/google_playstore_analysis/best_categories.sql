 -- Most Reviewed App Categories
 SELECT 
    Category, SUM(CAST(Reviews AS UNSIGNED)) AS Total_Reviews
FROM
    googleplaystore
GROUP BY Category
ORDER BY Total_Reviews DESC;