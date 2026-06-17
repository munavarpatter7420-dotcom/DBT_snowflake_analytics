
  create or replace   view DBT_SNOWFLAKE.PUBLIC.products_discount
  
  
  
  
  as (
    

SELECT
    PRODUCT_ID,
    PRODUCT_NAME,
    PRICE,
    

    PRICE * 0.10

 AS DISCOUNT
FROM PRODUCTS
  );

