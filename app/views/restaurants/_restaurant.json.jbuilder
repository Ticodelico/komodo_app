json.extract! restaurant, :id, :name, :phone_number, :email, :web_site, :active, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
