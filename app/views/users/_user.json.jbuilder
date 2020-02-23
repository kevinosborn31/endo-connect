json.extract! user, :id, :first_name, :last_name, :medicare, :ndss, :phone, :email, :location, :specialization, :user_type, :admin, :password_digest, :created_at, :updated_at
json.url user_url(user, format: :json)
