-- incremental_model_example.sql
{{
    config(
        materialized = 'incremental'
    )
}}
select * from {{ source('venky','dim_sales') }} t1
{% if is_incremental() %}
where 
t1.date > ( select max(date) from {{this}} )
{% endif %}