{{ config(materialized='table') }}

WITH tb1 as(
    select id,
    order_date,
    user_id

    from {{source('datafeed','stg_order')}})
select * from tb1
