json.extract! staff, :id, :first_name, :last_name, :address_id, :email, :store_id, :active, :username, :password, :last_update, :picture, :created_at, :updated_at
json.url staff_url(staff, format: :json)
