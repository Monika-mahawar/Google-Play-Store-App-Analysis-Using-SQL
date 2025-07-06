 -- Top 10 Most Reviewed Apps
 SELECT 
    App, Reviews
FROM
    googleplaystore
ORDER BY Reviews DESC
LIMIT 10;