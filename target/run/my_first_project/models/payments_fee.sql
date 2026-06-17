
  create or replace   view DBT_SNOWFLAKE.PUBLIC.payments_fee
  
  
  
  
  as (
    

SELECT
    PAYMENT_ID,
    PAYMENT_METHOD,
    PAYMENT_AMOUNT,
    

    PAYMENT_AMOUNT * 0.02

 AS PROCESSING_FEE
FROM PAYMENTS
  );

