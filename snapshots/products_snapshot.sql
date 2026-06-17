{% snapshot products_snapshot %}

{{
config(
target_schema='SNAPSHOTS',
unique_key='PRODUCT_ID',
strategy='check',
check_cols=['PRICE']
)
}}

select *
from PUBLIC.PRODUCTS

{% endsnapshot %}