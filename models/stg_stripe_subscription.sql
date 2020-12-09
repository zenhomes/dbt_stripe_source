{{ config(enabled=var('using_subscriptions', True)) }}

with subscription as (

    select *
    from {{ var('subscription') }}

), fields as (

    select
      id as subscription_id,
      metadata_moltin_product_id,
      metadata_moltin_product_sku as subscription_product,
      status,
      quantity,
      billing,
      billing_cycle_anchor,
      cancel_at,
      cancel_at_period_end as is_cancel_at_period_end,
      canceled_at,
      created as created_at,
      current_period_start,
      current_period_end,
      customer_id,
      days_until_due,
      start_date,
      ended_at,
      metadata_billing_address_city as billing_city,
      metadata_billing_address_country as billing_country,
      metadata_billing_address_postcode as billing_postcode
    from subscription

)

select * from fields
