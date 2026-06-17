
  create or replace   view DBT_SNOWFLAKE.PUBLIC.orders_gst
  
  
  
  
  as (
    

SELECT
    ORDER_ID,
    AMOUNT,
    

    AMOUNT * 0.18

 AS GST
FROM PUBLIC.ORDERS
  );

