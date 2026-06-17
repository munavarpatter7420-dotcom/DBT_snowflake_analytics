{% macro calculate_gst(column_name) %}

    {{ column_name }} * 0.18

{% endmacro %}
