json.extract! customer, :id, :store_id, :first_name, :last_name, :email, :address_id, :activebool, :create_date, :last_update, :active, :created_at, :updated_at
json.url customer_url(customer, format: :json)
