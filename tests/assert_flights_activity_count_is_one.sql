with
    activity_count as (
        select count(*) as count from {{ ref("flights_activity_count") }}
    )

select count(*) as activity_count
from activity_count
having
    activity_count != 0 and activity_count <> 1
    {% if target.name == "test" %}
        -- Custom error message when running tests
        and fail(
            'Expected activity_count to be 0 or 1, but found '
            || activity_count
            || ' records'
        )
    {% endif %}
