-- Apps with Multiple Listings
SELECT 
    App, COUNT(*) AS Count
FROM
    googleplaystore
GROUP BY App
HAVING COUNT(*) > 1;