{% macro test_nullable(column) %}
    {% if column.type == "STRING" %}
        {% if column.nullable %}
            {{ log("PASS: Column '" ~ column.name ~ "' is nullable") }}
        {% else %} {{ log("FAIL: Column '" ~ column.name ~ "' is not nullable") }}
        {% endif %}
    {% elif column.type == "INTEGER" %}
        {% if column.nullable %}
            {{ log("FAIL: Column '" ~ column.name ~ "' is nullable") }}
        {% else %} {{ log("PASS: Column '" ~ column.name ~ "' is not nullable") }}
        {% endif %}
    {% else %} {{ log("SKIP: Column '" ~ column.name ~ "' has unsupported type") }}
    {% endif %}
{% endmacro %}

