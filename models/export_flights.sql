EXPORT DATA OPTIONS (
  uri='gs://etl-airflow-bigquey/export_flights*.json',
  format='CSV',
  overwrite=true,
  field_delimiter=',',
  header=true
) AS
SELECT * FROM `my-project-95615-388109.my_first_bigquery.flights`
limit 500
/* limit added automatically by dbt cloud */

