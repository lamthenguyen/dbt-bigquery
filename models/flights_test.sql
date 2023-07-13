-- models/flights_test.sql

{{ config(
    pre_hook="""
        CREATE OR REPLACE TABLE `my-project-95615-388109.my_first_bigquery.flights_test`
        AS SELECT * FROM `my-project-95615-388109.my_first_bigquery.flights`
    """
) }}

SELECT
    Date,
    Code,
    Number,
    Origin,
    Destination,
    `Departure Time`,
    `Departure Delay`,
    `Arrival Time`,
    `Arrival Delay`,
    `Flight Time`,
    Distance,
    `Record Id`
FROM `my-project-95615-388109.my_first_bigquery.flights_test`
