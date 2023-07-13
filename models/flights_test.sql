-- models/flights_test.sql

{{ config(
    pre_hook="""
        CREATE OR REPLACE TABLE `my-project-95615-388109.my_first_bigquery.flights_test`
        OPTIONS (
            format='CSV',
            skip_leading_rows=1,
            allow_quoted_newlines=false,
            field_delimiter=',',
            uris=['gs://etl-airflow-bigquey/flights.csv']
        ) AS
        SELECT *
        FROM UNNEST([STRUCT(
            _COLUMN_NAME_1 AS Date,
            _COLUMN_NAME_2 AS Code,
            _COLUMN_NAME_3 AS Number,
            _COLUMN_NAME_4 AS Origin,
            _COLUMN_NAME_5 AS Destination,
            _COLUMN_NAME_6 AS `Departure Time`,
            _COLUMN_NAME_7 AS `Departure Delay`,
            _COLUMN_NAME_8 AS `Arrival Time`,
            _COLUMN_NAME_9 AS `Arrival Delay`,
            _COLUMN_NAME_10 AS `Flight Time`,
            _COLUMN_NAME_11 AS Distance,
            _COLUMN_NAME_12 AS `Record Id`
        )])
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
