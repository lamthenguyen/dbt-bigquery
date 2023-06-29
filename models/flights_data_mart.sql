{{
    config(
        materialized="table",
        destination_dataset="my_first_bigquery",
        destination_table="flights_data_mart",
    )
}}

with
    source_data as (
        select
            `Date`,
            `Code`,
            `Number`,
            `Origin`,
            `Destination`,
            `Departure Time`,
            `Departure Delay`,
            `Arrival Time`,
            `Arrival Delay`,
            `Flight Time`,
            `Distance`,
            `Record ID`
        from `my-project-95615-388109.my_first_bigquery.flights_sample`
    )

select `Date`, `Code`, `Number`, `Origin`, `Destination`
from source_data
