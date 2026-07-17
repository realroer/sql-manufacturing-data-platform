/*
Derived Metrics

Purpose:
Calculate common manufacturing performance metrics
using SQL expressions.

Engineering Concepts:
Calculated Columns
CASE
Arithmetic Expressions
*/

SELECT

    production_id,

    serial_number,

    start_time,

    end_time,

    DATEDIFF(
        SECOND,
        start_time,
        end_time
    ) AS cycle_time_seconds,

    CASE

        WHEN test_result = 'PASS' THEN 1

        ELSE 0

    END AS passed_test,

    CASE

        WHEN test_result = 'FAIL' THEN 1

        ELSE 0

    END AS failed_test

FROM manufacturing.production_history;
