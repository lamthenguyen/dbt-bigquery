select count
from activity_count
where count = 1
having
    count != 0
    and count <> 1
    and fail('Expected activity_count to be 1, but got ' || cast(count as string))
