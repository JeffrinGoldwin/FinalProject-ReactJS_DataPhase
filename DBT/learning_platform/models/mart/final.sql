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
),

stg_courses AS (
    SELECT
        *
    FROM {{ ref('stg_courses') }}
),

stg_events AS (
    SELECT
        *
    FROM {{ ref('stg_events') }}
),

stg_users AS (
    SELECT
        *
    FROM {{ ref('stg_users') }}
),

stg_acceptreject AS (
    SELECT
        *
    FROM {{ ref('stg_accpetreject') }}
    WHERE acceptorreject = 1
),

final_easy AS (
    SELECT
        s.firstname,
        s.email,
        s.skills,
        s.experience,
        a.eventname,
        a.acceptorreject,
        e.starttime,
        e.endtime,
        c.VideoDifficulty
    FROM stg_skills as s
    JOIN stg_acceptreject as a
    ON s.email = a.email
    JOIN stg_events as e
    ON a.eventname = e.eventname
    JOIN stg_courses as c
    ON c.VideoTitle = e.eventname
)

SELECT * FROM final_easy

