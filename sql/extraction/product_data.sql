/*
Product Data Extraction

Purpose:
Retrieve production records together with
product metadata using reusable joins.

Engineering Concept:
INNER JOIN
*/

SELECT

    p.production_id,
    p.serial_number,
    p.product_code,
    d.product_name,
    d.product_family,
    d.revision

FROM manufacturing.production_history p

INNER JOIN manufacturing.product_master d

    ON p.product_code = d.product_code

WHERE p.start_time >= @StartDate
  AND p.start_time < @EndDate

ORDER BY d.product_family,
         p.product_code;
