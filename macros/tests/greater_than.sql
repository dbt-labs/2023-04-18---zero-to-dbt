{% test greater_than(model, column_name, min_value=0, inclusive=False) %}
  select 
    *
  from {{ model }}

  where
    not {{ column_name }} > {{- "=" if inclusive }} {{ min_value }}
{% endtest %}