with
    activity_count as (
        select count(*) as count from {{ ref("flights_activity_count") }}
    )

select count
from {{ ref("activity_count") }}
where count = 1
having
    count != 0
    and count <> 1
    and fail('Expected activity_count to be 1, but got ' || cast(count as string))
