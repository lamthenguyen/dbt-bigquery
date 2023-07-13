select
    date,
    airline_code::int64,
    flight_number::int64,
    origin,
    destination,
    departure_time::int64,
    departure_delay::int64,
    arrival_time::int64,
    arrival_delay::int64,
    airtime::int64,
    distance::int64,
    flight_code::int64
from `my-project-95615-388109.my_first_bigquery.flights`
