-- select * from {{source('venky','dim_pay')}}

-- select
-- sum(case when payment_mode= 'Credit Card' then  
--     sales end ) as "Credit Card",
-- sum(case when payment_mode= 'Cash' then
--     sales end ) as Cash,
-- sum(case when payment_mode='Mobile Payment' then 
--     sales end ) as "Mobile Payment",
-- sum(case when payment_mode=  'Debit Card' then 
--     sales end ) as  "Debit Card",
-- sum(case when payment_mode= 'Bank Transfer' then 
--     sales end ) as "Bank Transfer"
-- from {{source('venky','dim_pay')}}

-- {% set column_values = dbt_utils.get_column_values( source("venky","dim_pay"),"payment_mode" ) %}
-- {{column_values}}

-- select *,
-- {% for i in column_values %}
--  sum(case when payment_mode= '{{i}}' then sales end ) as "{{i}}",
--  {%- endfor -%}
-- from from {{source('venky','dim_pay')}}

{% set column_values = dbt_utils.get_column_values( source("venky","dim_pay"),"payment_mode" ) %}
{{column_values}}

-- select *,
-- {% for i in column_values %}
--  sum(case when payment_mode= '{{i}}' then sales end ) as "{{i}}"{% if not loop.last %},{% endif %}
-- {%- endfor -%}
-- from from {{source('venky','dim_pay')}}

-- select *
-- {% for i in column_values %}
-- {%- if not loop.first -%},{% endif %}
--  sum(case when payment_mode= '{{i}}' then sales end ) as {{i | upper}}_SALES
-- {%- endfor -%}
-- from from {{source('venky','dim_pay')}}

-- select *
-- {% for i in column_values %}
-- {%- if loop.index > 1  -%},{% endif %}
--  sum(case when payment_mode= '{{i}}' then sales end ) as {{i | upper}}_SALES
-- {%- endfor %}
-- from from {{source('venky','dim_pay')}}


select *
{% for i in column_values %}
{%- if loop.index > 1  -%},{% endif %}
 sum(case when payment_mode= '{{i}}' then sales end ) as {{i | upper}}_SALES {%- if loop.index <  loop.length-1  -%},{% endif %}
{%- endfor %}
from from {{source('venky','dim_pay')}}