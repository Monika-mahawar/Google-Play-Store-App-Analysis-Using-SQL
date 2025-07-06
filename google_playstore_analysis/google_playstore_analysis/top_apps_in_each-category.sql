 --  Top_Installed_App_Per_Category
 SELECT Category, App, Installs
FROM (
    SELECT 
        Category,
        App,
        CAST(REPLACE(REPLACE(Installs, '+', ''), ',', '') AS UNSIGNED) AS Installs,
        ROW_NUMBER() OVER (PARTITION BY Category ORDER BY CAST(REPLACE(REPLACE(Installs, '+', ''), ',', '') AS UNSIGNED) DESC) AS rn
    FROM googleplaystore
) AS ranked
WHERE rn = 1;