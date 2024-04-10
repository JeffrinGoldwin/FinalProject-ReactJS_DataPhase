{{
    config(
        tags = ['mart']
    )
}}

WITH
stg_acceptreject AS (
    SELECT
        eventname,
        COUNT(acceptorreject) AS Accepted_count
    FROM {{ ref('stg_accpetreject') }}
    WHERE acceptorreject = 1
    GROUP BY eventname
)

SELECT * FROM stg_acceptreject