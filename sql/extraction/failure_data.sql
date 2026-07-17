/*
Failure Data Extraction

Purpose:
Retrieve failed manufacturing tests and classify
their severity for downstream analysis.

Engineering Concept:
CASE expressions and business-rule classification.
*/

SELECT

    serial_number,
    product_code,
    station_name,
    failure_code,
    failure_description,

    CASE

        WHEN failure_code LIKE 'CRIT%' THEN 'Critical'

        WHEN failure_code LIKE 'MAJ%' THEN 'Major'

        WHEN failure_code LIKE 'MIN%' THEN 'Minor'

        ELSE 'Unknown'

    END AS failure_severity,

    end_time

FROM manufacturing.failure_history

WHERE end_time >= @StartDate
  AND end_time < @EndDate
  AND test_result = 'FAIL'

ORDER BY end_time DESC;
