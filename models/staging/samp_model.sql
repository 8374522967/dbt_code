{{ config(materialized='table') }}

WITH tb1 as(
    select
    id
    from {{source('datafeed','stg_customerdata')}})
select * from tb1
