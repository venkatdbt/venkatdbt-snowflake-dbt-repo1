-- select *,
-- ((sales1-sales2)/sales2)*100 as change,
-- ((sales1-sales4)/sales4)*100 as change2,
-- ((sales1-cost)/cost)*100 as change3,
--  from {{ source('venky','person_sales')}}

select *,
 {{ percentage_change('sales1','sales2') }} as change1,
 {{ percentage_change('sales1','sales4') }} as change2,
 {{ percentage_change('sales1','cost')   }} as change3,
from {{ source('venky','person_sales')}}
