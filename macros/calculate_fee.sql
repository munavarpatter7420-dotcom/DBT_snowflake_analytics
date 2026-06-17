{% macro calculate_fee(column_name) %}

    {{ column_name }} * 0.02

{% endmacro %}