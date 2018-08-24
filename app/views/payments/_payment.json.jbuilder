json.extract! payment, :id, :customer_id, :staff_id, :rental_id, :amount, :payment_date, :created_at, :updated_at
json.url payment_url(payment, format: :json)
