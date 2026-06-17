{% snapshot customers_snapshot %}

{{
    config(
        target_database='DBT_SNOWFLAKE',
        target_schema='SNAPSHOTS',
        unique_key='CUSTOMER_ID',

        strategy='check',
        check_cols=['FIRST_NAME','LAST_NAME']
    )
}}

select *
from PUBLIC.CUSTOMERS

{% endsnapshot %}