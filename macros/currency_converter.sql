{% macro currency_converter(currency,value) %}
{% if currency=='rupee' %}
   {{value}}
{% elif currency=='yen' %}
   {{value/80}} 
{% elif currency=='par' %}
   {{value/20}}
{% elif currency=='dollar'%}
   {{value/62}}
{% endif %}
{% endmacro %}
