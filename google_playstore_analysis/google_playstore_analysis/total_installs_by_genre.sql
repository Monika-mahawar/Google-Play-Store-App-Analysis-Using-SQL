  -- Total Installs by Genre
  SELECT 
    Genres,
    SUM(CAST(REPLACE(REPLACE(Installs, '+', ''),
            ',',
            '')
        AS UNSIGNED)) AS Total_Installs
FROM
    googleplaystore
WHERE
    Installs IS NOT NULL
GROUP BY Genres
ORDER BY Total_Installs DESC;