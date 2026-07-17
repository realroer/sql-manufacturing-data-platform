/*
Status Normalization

Purpose:
Normalize inconsistent manufacturing status values
into standardized reporting categories.

Engineering Concepts:
CASE
COALESCE
NULLIF
*/

SELECT

    production_id,

    COALESCE(

        NULLIF(test_result, ''),

        'UNKNOWN'

    ) AS normalized_result,

    CASE

        WHEN test_result IN ('PASS','OK')
            THEN 'PASS'

        WHEN test_result IN ('FAIL','NG')
            THEN 'FAIL'

        ELSE 'UNKNOWN'

    END AS reporting_status

FROM manufacturing.production_history;
