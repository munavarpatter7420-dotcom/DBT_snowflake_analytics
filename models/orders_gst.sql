{{ config(tags=['staging']) }}

SELECT
    ORDER_ID,
    AMOUNT,
    {{ calculate_gst('AMOUNT') }} AS GST
FROM PUBLIC.ORDERS