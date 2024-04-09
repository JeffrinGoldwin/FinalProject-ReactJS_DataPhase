{{
    config(
        tags = ['staging']
    )
}}

WITH
required_field  AS (
    SELECT
        course_id,
        VideoURL,
        VideoTitle,
        VideoDifficulty,
        VideoDescription
    FROM
        {{ source('learningplatform', 'course')}}
)

SELECT * FROM required_field
