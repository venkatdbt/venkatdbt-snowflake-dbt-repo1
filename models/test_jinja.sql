select *
from {{source('venky','USERS')}}

{% set list_of_countries=dbt_utils.get_column_values( source("venky","USERS"),"Country" ) %}
{{list_of_countries}}
{% for i in list_of_countries %}
{%- if i=='USA' -%}
{{i}}
{%- endif -%}
{%- endfor -%}

{% set column_names=adapter.get_columns_in_relation(source("venky","USERS")) %}
{{column_names}}
{% for i in column_names %}
{{i.column}}
{%- endfor -%}

