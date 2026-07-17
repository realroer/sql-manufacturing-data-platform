/*
Date Normalization

Purpose:
Standardize manufacturing timestamps for
consistent reporting and analytics.

Engineering Concept:
CAST(), CONVERT(), DATEFROMPARTS()
*/

SELECT

    production_id,

    CAST(start_time AS DATE) AS production_date,

    CONVERT(VARCHAR(7), start_time, 120) AS production_month,

    DATEFROMPARTS(

        YEAR(start_time),

        MONTH(start_time),

        1

    ) AS month_start

FROM manufacturing.production_history;
