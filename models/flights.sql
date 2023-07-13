select
    date,
    cast(airline_code as int64) as airline_code,
    cast(flight_number as int64) as flight_number,
    origin,
    destination,
    cast(departure_time as int64) as departure_time,
    cast(departure_delay as int64) as departure_delay,
    cast(arrival_time as int64) as arrival_time,
    cast(arrival_delay as int64) as arrival_delay,
    cast(airtime as int64) as airtime,
    cast(distance as int64) as distance,
    cast(flight_code as int64) as flight_code
from `my-project-95615-388109.my_first_bigquery.flights`
