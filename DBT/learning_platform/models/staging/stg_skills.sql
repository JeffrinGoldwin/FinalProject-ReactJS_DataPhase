{{
    config(
        tags = ['staging']
    )
}}

WITH 
required_feild AS (
    SELECT
        *
    FROM
        {{ source('learningplatform', 'skills')}}
)

SELECT * FROM required_feild