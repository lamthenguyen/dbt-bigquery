with
    activity_count as (
        select count(*) as count from {{ ref("flights_activity_count") }}
    )

select count
from activity_count
where count = 1
