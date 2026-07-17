/*
Production Data Extraction

Purpose:
Retrieve production records for downstream
validation, reconciliation, and reporting.

This example uses generic table names to
demonstrate reusable SQL design.
*/

SELECT

    production_id,
    product_code,
    station_name,
    serial_number,
    test_result,
    start_time,
    end_time

FROM manufacturing.production_history

WHERE start_time >= @StartDate
  AND start_time < @EndDate

ORDER BY start_time;
