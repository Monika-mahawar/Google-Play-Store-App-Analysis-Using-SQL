 -- Most Supported Android Version
 SELECT 
    `Android Ver`, COUNT(App) AS Count
FROM
    googleplaystore
GROUP BY `Android Ver`
ORDER BY Count DESC
LIMIT 1;