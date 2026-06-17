{% macro calculate_discount(column_name) %}

    {{ column_name }} * 0.10

{% endmacro %}