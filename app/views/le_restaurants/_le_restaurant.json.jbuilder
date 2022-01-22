json.extract! le_restaurant, :id, :name, :address, :rating, :chef_name, :created_at, :updated_at
json.url le_restaurant_url(le_restaurant, format: :json)
