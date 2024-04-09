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
        {{ source('learningplatform', 'events')}}
)

SELECT * FROM required_feild