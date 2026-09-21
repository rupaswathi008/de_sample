# Dockerfile-airflow
FROM apache/airflow:2.9.3

# Switch to airflow user first
USER airflow

# Install dbt packages
RUN pip install --no-cache-dir dbt-core dbt-snowflake


FROM apache/airflow:2.9.3

# Install dbt and dependencies
RUN pip install dbt-core dbt-postgres dbt-snowflake dbt-bigquery dbt-redshift \
    boto3 pandas python-dotenv snowflake-connector-python fastparquet
