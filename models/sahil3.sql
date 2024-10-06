select * from {{ source('venky','USERS') }}
union all
select * from {{ source('venky','USERS') }}
union all
select * from {{ source('venky','USERS') }}