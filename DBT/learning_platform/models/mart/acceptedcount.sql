{{
    config(
        tags = ['mart']
    )
}}

WITH
stg_acceptreject AS (
    SELECT
        eventname,
        COUNT(acceptorreject)
    FROM {{ ref('stg_accpetreject') }}
    WHERE acceptorreject = 1
    GROUP BY eventname
)

SELECT * FROM stg_acceptreject