-- models/flights.sql

{{ config(
    pre_hook="""
        CREATE OR REPLACE TABLE `my-project-95615-388109.my_first_bigquery.flights_test` AS
        SELECT *
        FROM `gs://etl-airflow-bigquey/flights.csv` AS t
    """
) }}

-- SQL statement for your flights model
SELECT
    Date,
    Code,
    Number,
    Origin,
    Destination,
    Departure Time,
    Departure Delay,
    Arrival Time,
    Arrival Delay,
    Flight Time,
    Distance,
    Record Id
FROM `my-project-95615-388109.my_first_bigquery.flights_test`

