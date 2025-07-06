-- Most Popular Genre
SELECT 
    Genres, COUNT(*) AS Count
FROM
    googleplaystore
GROUP BY Genres
ORDER BY Count DESC
LIMIT 1;