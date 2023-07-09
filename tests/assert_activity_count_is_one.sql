
select *
from {{ ref("flights_activity_count") }}
where activity_count <> 1