json.extract! user, :id, :name, :surname, :role, :phone, :created_at, :updated_at
json.url user_url(user, format: :json)
