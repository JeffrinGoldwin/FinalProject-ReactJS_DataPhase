{{
    config(
        tags = ['mart']
    )
}}

WITH
stg_skills AS (
    SELECT
        *
    FROM {{ ref('stg_skills') }}
    ORDER BY skills, experience
)

SELECT * FROM stg_skills