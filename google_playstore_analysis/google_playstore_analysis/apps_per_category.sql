-- App Count by Category (Most to Least)
SELECT 
    Category, COUNT(*) AS Apps
FROM
    googleplaystore
GROUP BY Category
ORDER BY Apps DESC;