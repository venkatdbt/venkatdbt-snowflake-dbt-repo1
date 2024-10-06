--data types in jinja
{{"sahel"}}

{{ ['a','b','c','d'] }}

{{{'name':'sahel','bootcamp':'dbt'}}}
--variables in jinja
{# this is my comment venkat #}
{%- set var1 = 'sahel' -%}
{%- set var2 = ['a', 'b', 'c', 'd'] -%}
{%- set var3 = {'name': 'sahel', 'bootcamp': 'dbt'} -%}
{%- set var4 = True -%}
{#- Use comments properly in Jinja #}
{#- this is my comment venkat #}

{{- var1 }}
{{ var2 }}
{{ var3 }}
{{ var4 }}

--conditional logics
--IF condition
{% if 1==2 %}
    {{ "Iam inside first block" }}
{% elif 1==3 %}
    {{ "iam inside second block "}}
{% else %}
    {{ "iam inside second block" }}
{% endif %}

--for loop
{% for i in [1,2,3] %}
{{- i }}
{% endfor %}

{% for i in var2 %}
{{-i}}
{% endfor %}

{% set column_values = dbt_utils.get_column_values( source("venky","dim_pay"),"payment_mode" ) %}
{{column_values}}