 SELECT 
   {{ currency_converter('currency', 'sales') }} AS sales_in_rupees,
   {{ currency_converter('currency', 'cost') }} AS cost_in_rupees,
   {{ currency_converter('currency', 'discount') }} AS discount_in_rupees
FROM {{ source('venky', 'financials') }}
