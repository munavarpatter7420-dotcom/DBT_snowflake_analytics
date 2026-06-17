
  create or replace   view DBT_SNOWFLAKE.PUBLIC.customers_full_name
  
  
  
  
  as (
    SELECT
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    

    FIRST_NAME || ' ' || LAST_NAME

 AS FULL_NAME
FROM CUSTOMERS
  );

