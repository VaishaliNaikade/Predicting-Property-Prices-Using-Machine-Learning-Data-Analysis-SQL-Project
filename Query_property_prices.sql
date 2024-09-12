use propertypricesdata;
-- Calculate property age and analyze average price based on age
SELECT 
    (YEAR(CURDATE()) - `Year Built`) AS property_age,
    AVG(`Price ($)`) AS avg_price
FROM property_prices_data
GROUP BY property_age
ORDER BY property_age;

-- Analyze average property price by construction year
SELECT 
    `Year Built`,
    AVG(`Price ($)`) AS avg_price
FROM property_prices_data
GROUP BY `Year Built`
ORDER BY `Year Built`;

-- Analyze price trends over time for different property ages
SELECT 
    `Year Built`,
    CASE 
        WHEN (YEAR(CURDATE()) - `Year Built`) <= 10 THEN '0-10 years'
        WHEN (YEAR(CURDATE()) - `Year Built`) BETWEEN 11 AND 20 THEN '11-20 years'
        WHEN (YEAR(CURDATE()) - `Year Built`) BETWEEN 21 AND 30 THEN '21-30 years'
        ELSE '30+ years'
    END AS age_group,
    AVG(`Price ($)`) AS avg_price
FROM property_prices_data
GROUP BY `Year Built`, age_group
ORDER BY `Year Built`, age_group;

-- Calculate property age and analyze average price based on age
SELECT 
    (YEAR(CURDATE()) - `Year Built`) AS property_age,
    AVG(`Price ($)`) AS avg_price
FROM property_prices_data
GROUP BY property_age
ORDER BY property_age;

-- Analyze average property price by construction year
SELECT 
    `Year Built`,
    AVG(`Price ($)`) AS avg_price
FROM property_prices_data
GROUP BY `Year Built`
ORDER BY `Year Built`;

-- Analyze price trends over time for different property age groups
SELECT 
    `Year Built`,
    CASE 
        WHEN (YEAR(CURDATE()) - `Year Built`) <= 10 THEN '0-10 years'
        WHEN (YEAR(CURDATE()) - `Year Built`) BETWEEN 11 AND 20 THEN '11-20 years'
        WHEN (YEAR(CURDATE()) - `Year Built`) BETWEEN 21 AND 30 THEN '21-30 years'
        ELSE '30+ years'
    END AS age_group,
    AVG(`Price ($)`) AS avg_price
FROM property_prices_data
GROUP BY `Year Built`, age_group
ORDER BY `Year Built`, age_group;

-- Analyze average property price by decade of construction
SELECT 
    CONCAT(FLOOR(`Year Built` / 10) * 10, '-', FLOOR(`Year Built` / 10) * 10 + 9) AS construction_decade,
    AVG(`Price ($)`) AS avg_price
FROM property_prices_data
GROUP BY construction_decade
ORDER BY construction_decade;





