/*
Station Data Extraction

Purpose:
Summarize manufacturing activity by station.

Engineering Concept:
Aggregation using GROUP BY and COUNT().
*/

SELECT

    station_name,

    COUNT(*) AS total_tests,

    SUM(
        CASE
            WHEN test_result = 'PASS' THEN 1
            ELSE 0
        END
    ) AS passed_tests,

    SUM(
        CASE
            WHEN test_result = 'FAIL' THEN 1
            ELSE 0
        END
    ) AS failed_tests

FROM manufacturing.production_history

WHERE start_time >= @StartDate
  AND start_time < @EndDate

GROUP BY station_name

ORDER BY total_tests DESC;
