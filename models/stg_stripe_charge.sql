with charge as (

    select *
    from {{ var('charge') }}

), fields as (

    select 
      charge.metadata_customer_email AS woocommerce_email,
      charge.metadata_payer_email AS woocommerce_email_2,
      metadata_user_id as user_id,
      metadata_subscription_id as subscription_id,
      metadata_moltin_order_id as moltin_order_id,
      id as charge_id, 
      amount,
      refunded,
      amount_refunded,
      application_fee_amount,
      balance_transaction_id,
      captured as is_captured,
      card_id,
      created as created_at,
      customer_id,
      currency,
      description,
      failure_code,
      failure_message,
      paid as is_paid,
      payment_intent_id,
      receipt_email,
      receipt_number,
      refunded as is_refunded,
      status,
      invoice_id,
      captured,
      livemode,
      charge.metadata_order_number,
      outcome_seller_message,
      outcome_type,
      paid
      from charge
)

select *
from fields
