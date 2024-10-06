{{ 
    config(
        materialized='ephemeral'
    )
 }}
select * from {{ source('venky','USERS') }}