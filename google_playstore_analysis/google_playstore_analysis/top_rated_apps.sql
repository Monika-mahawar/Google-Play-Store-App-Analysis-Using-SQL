-- Top Rated Apps 
SELECT 
    App, Rating
FROM
    googleplaystore
WHERE
    Rating > 4.5
ORDER BY Rating DESC;