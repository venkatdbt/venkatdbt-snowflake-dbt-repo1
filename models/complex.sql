{% set payment_modes = dbt_utils.get_column_values( source("venky","dim_pay"),"payment_mode" ) %}

select
{% for i in payment_modes %}
 sum(case when payment_mode= '{{i}}' then sales end ) as "{{i}}",
 {%- endfor -%}
from {{source('venky','dim_pay')}}