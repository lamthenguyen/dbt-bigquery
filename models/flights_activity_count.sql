{{
    config(
        materialized="table",
        destination_dataset="my_first_bigquery",
        destination_table="flights_activity_count",
    )
}}

with
    source_data as (
        select `Code`, `Number`
        from `my-project-95615-388109.my_first_bigquery.flights_sample`
    )

select `Code`, `Number`
from source_data
