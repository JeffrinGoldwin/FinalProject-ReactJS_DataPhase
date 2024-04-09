{{
    config(
        tags = ['mart']
    )
}}

WITH
stg_events AS (
    SELECT
        eventname,
        venue,
        capacity
    FROM {{ ref('stg_events') }}
)

SELECT * FROM stg_events