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
        {{ source('learningplatform','acceptrejects') }}
)

SELECT * FROM required_feild