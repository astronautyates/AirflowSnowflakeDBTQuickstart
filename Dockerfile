FROM quay.io/astronomer/astro-runtime:8.8.0


# install dbt into a virtual environment
RUN python -m venv dbt_venv && source dbt_venv/bin/activate && pip install --no-cache-dir dbt-snowflake && pip install --no-cache-dir dbt-postgres && deactivate