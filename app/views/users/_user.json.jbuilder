json.extract! user, :id, :name, :company_id, :email, :phone_number, :password_hash, :created_at, :updated_at
json.url user_url(user, format: :json)
