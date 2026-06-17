-- created_at: 2026-06-16T16:01:04.472647+00:00
-- finished_at: 2026-06-16T16:01:04.589917600+00:00
-- elapsed: 117ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c51741-0001-cc04-000e-f25e000412de
-- desc: execute adapter call
show terse schemas in database DBT_SNOWFLAKE
    limit 10000
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "my_first_project", "target_name": "dev"} */;
-- created_at: 2026-06-16T16:01:04.755902400+00:00
-- finished_at: 2026-06-16T16:01:04.935150100+00:00
-- elapsed: 179ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.my_first_project.my_first_dbt_model
-- query_id: 01c51741-0001-cc0a-000e-f25e00040652
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DBT_SNOWFLAKE"."PUBLIC" LIMIT 10000;
-- created_at: 2026-06-16T16:01:05.070751600+00:00
-- finished_at: 2026-06-16T16:01:05.174203500+00:00
-- elapsed: 103ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.my_first_project.orders_gst
-- query_id: 01c51741-0001-cc0a-000e-f25e00040656
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DBT_SNOWFLAKE"."PUBLIC" LIMIT 10000;
-- created_at: 2026-06-16T16:01:05.187807600+00:00
-- finished_at: 2026-06-16T16:01:05.421195300+00:00
-- elapsed: 233ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.my_first_project.orders_gst
-- query_id: 01c51741-0001-cc04-000e-f25e000412e6
-- desc: execute adapter call
create or replace   view DBT_SNOWFLAKE.PUBLIC.orders_gst
  
  
  
  
  as (
    

SELECT
    ORDER_ID,
    AMOUNT,
    

    AMOUNT * 0.18

 AS GST
FROM PUBLIC.ORDERS
  )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.my_first_project.orders_gst", "profile_name": "my_first_project", "target_name": "dev"} */;
-- created_at: 2026-06-16T16:01:05.325739100+00:00
-- finished_at: 2026-06-16T16:01:05.455369700+00:00
-- elapsed: 129ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.my_first_project.customers_full_name
-- query_id: 01c51741-0001-cc04-000e-f25e000412ea
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DBT_SNOWFLAKE"."PUBLIC" LIMIT 10000;
-- created_at: 2026-06-16T16:01:05.460286600+00:00
-- finished_at: 2026-06-16T16:01:05.704878900+00:00
-- elapsed: 244ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.my_first_project.customers_full_name
-- query_id: 01c51741-0001-cc0a-000e-f25e0004065a
-- desc: execute adapter call
create or replace   view DBT_SNOWFLAKE.PUBLIC.customers_full_name
  
  
  
  
  as (
    SELECT
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    

    FIRST_NAME || ' ' || LAST_NAME

 AS FULL_NAME
FROM CUSTOMERS
  )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.my_first_project.customers_full_name", "profile_name": "my_first_project", "target_name": "dev"} */;
-- created_at: 2026-06-16T16:01:06.246665+00:00
-- finished_at: 2026-06-16T16:01:06.353391200+00:00
-- elapsed: 106ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.my_first_project.payments_fee
-- query_id: 01c51741-0001-cc04-000e-f25e000412ee
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DBT_SNOWFLAKE"."PUBLIC" LIMIT 10000;
-- created_at: 2026-06-16T16:01:04.944633900+00:00
-- finished_at: 2026-06-16T16:01:06.571490600+00:00
-- elapsed: 1.6s
-- outcome: success
-- dialect: snowflake
-- node_id: model.my_first_project.my_first_dbt_model
-- query_id: 01c51741-0001-cc04-000e-f25e000412e2
-- desc: execute adapter call
create or replace transient  table DBT_SNOWFLAKE.PUBLIC.my_first_dbt_model
    
    
    
    
    as (
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/



with source_data as (

    select 1 as id
    union all
    select null as id

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.my_first_project.my_first_dbt_model", "profile_name": "my_first_project", "target_name": "dev"} */;
-- created_at: 2026-06-16T16:01:06.356615700+00:00
-- finished_at: 2026-06-16T16:01:06.579223300+00:00
-- elapsed: 222ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.my_first_project.payments_fee
-- query_id: 01c51741-0001-cc04-000e-f25e000412f2
-- desc: execute adapter call
create or replace   view DBT_SNOWFLAKE.PUBLIC.payments_fee
  
  
  
  
  as (
    

SELECT
    PAYMENT_ID,
    PAYMENT_METHOD,
    PAYMENT_AMOUNT,
    

    PAYMENT_AMOUNT * 0.02

 AS PROCESSING_FEE
FROM PAYMENTS
  )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.my_first_project.payments_fee", "profile_name": "my_first_project", "target_name": "dev"} */;
-- created_at: 2026-06-16T16:01:06.618106400+00:00
-- finished_at: 2026-06-16T16:01:06.825476400+00:00
-- elapsed: 207ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.my_first_project.my_second_dbt_model
-- query_id: 01c51741-0001-cc04-000e-f25e000412f6
-- desc: execute adapter call
create or replace   view DBT_SNOWFLAKE.PUBLIC.my_second_dbt_model
  
  
  
  
  as (
    
-- Use the `ref` function to select from other models

select *
from DBT_SNOWFLAKE.PUBLIC.my_first_dbt_model
where id = 1
  )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.my_first_project.my_second_dbt_model", "profile_name": "my_first_project", "target_name": "dev"} */;
-- created_at: 2026-06-16T16:01:07.225515900+00:00
-- finished_at: 2026-06-16T16:01:07.330987600+00:00
-- elapsed: 105ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.my_first_project.products_discount
-- query_id: 01c51741-0001-cc04-000e-f25e000412fa
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DBT_SNOWFLAKE"."PUBLIC" LIMIT 10000;
-- created_at: 2026-06-16T16:01:07.335352200+00:00
-- finished_at: 2026-06-16T16:01:07.495116600+00:00
-- elapsed: 159ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.my_first_project.products_discount
-- query_id: 01c51741-0001-cc0a-000e-f25e0004065e
-- desc: execute adapter call
create or replace   view DBT_SNOWFLAKE.PUBLIC.products_discount
  
  
  
  
  as (
    

SELECT
    PRODUCT_ID,
    PRODUCT_NAME,
    PRICE,
    

    PRICE * 0.10

 AS DISCOUNT
FROM PRODUCTS
  )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.my_first_project.products_discount", "profile_name": "my_first_project", "target_name": "dev"} */;
