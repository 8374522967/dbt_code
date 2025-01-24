{{ config(
    materialized="incremental",
    incremental_strategy="append",
) }}

select * from {{source('datafeed','stg_order')}} 
