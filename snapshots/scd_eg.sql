{% snapshot scd_eg %}

--check cols strategy
{{
    config(
        target_schema='random',
        strategy='check',
        unique_key='id',
        check_cols=['first_name','last_name']
    )
}}
--updated_at strategy
{{
    config(
        target_schema-'random',
        strategy='timestamp',
        unique_key='id'
        updated_at='updated_at'
    )
}}
select * from {{ source('venky','scd_eg') }}
{% endsnapshot %}