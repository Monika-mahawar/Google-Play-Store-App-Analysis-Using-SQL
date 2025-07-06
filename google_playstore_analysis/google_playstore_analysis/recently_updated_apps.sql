-- Top_10_Recently_Updated_Apps
SELECT 
    App, `Last Updated`
FROM
    googleplaystore
ORDER BY STR_TO_DATE(`Last Updated`, '%B %d, %Y') DESC
LIMIT 10;