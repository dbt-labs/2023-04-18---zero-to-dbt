{% macro modernize_legacy_date(legacy_date_col, from=this) %}
    {%- set day_diff -%}
        (select (current_timestamp::date - max({{legacy_date_col}})::date)::int as day_diff from {{from}})
    {%- endset -%}

    {%- set modernize_legacy_date_sql -%}
        {{legacy_date_col}} + {{day_diff}}
    {%- endset -%}

    {{ return(modernize_legacy_date_sql) }}
{% endmacro %}