{{
    config(
        materialized='table',
        destination_dataset='my_first_bigquery',
        destination_table='flights_target'
    )
}}

WITH source_data AS (
    SELECT
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
    FROM
        `my-project-95615-388109.my_first_bigquery.flights_sample`
)

SELECT
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
FROM
    source_data
