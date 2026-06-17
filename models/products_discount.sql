{{ config(tags=['sales']) }}

SELECT
    PRODUCT_ID,
    PRODUCT_NAME,
    PRICE,
    {{ calculate_discount('PRICE') }} AS DISCOUNT
FROM PRODUCTS