{% macro percentage_change(a,b) %}
(({{a}}-{{b}})/{{b}})*100
{% endmacro %}