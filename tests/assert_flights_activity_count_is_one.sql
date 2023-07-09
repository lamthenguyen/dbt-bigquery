select count(*) as activity_count
from {{ ref("flights_activity_count") }}
having activity_count != 0 and activity_count <> 1
