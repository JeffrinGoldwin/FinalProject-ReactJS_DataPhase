{{
    config(
        tags = ['mart']
    )
}}

WITH
stg_course AS (
    SELECT
        VideoDifficulty,
        COUNT(VideoTitle)
    FROM {{ ref('stg_courses') }}
    GROUP BY VideoDifficulty
)

SELECT * FROM stg_course