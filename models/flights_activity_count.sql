-- models/flights_activity_count.sql
{{
    config(
        materialized="table",
        destination_dataset="my_first_bigquery",
        destination_table="flights_data_mart",
    )
}}

with
    source_data as (
        select `Code`, `Number`
        from `my-project-95615-388109.my_first_bigquery.flights_sample`
    ),
    activity_count as (select count(*) as count from source_data)

select `Code`, `Number`, (select count from activity_count) as activity_count
from source_data
