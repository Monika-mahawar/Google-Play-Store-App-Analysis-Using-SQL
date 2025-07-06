 -- App Quality Segmentation
 SELECT 
    CASE
        WHEN Rating >= 4.5 THEN 'Excellent'
        WHEN Rating >= 4 THEN 'Good'
        WHEN Rating >= 3 THEN 'Average'
        WHEN Rating IS NULL THEN 'Unrated'
        ELSE 'Low'
    END AS Rating_Group,
    COUNT(*) AS App_Count
FROM
    googleplaystore
GROUP BY Rating_Group;