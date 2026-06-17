{{ config(tags=['finance']) }}

SELECT
    PAYMENT_ID,
    PAYMENT_METHOD,
    PAYMENT_AMOUNT,
    {{ calculate_fee('PAYMENT_AMOUNT') }} AS PROCESSING_FEE
FROM PAYMENTS