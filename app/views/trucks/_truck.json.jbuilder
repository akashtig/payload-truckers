json.extract! truck, :id, :name, :truck_type, :year, :capacity, :reserved, :created_at, :updated_at
json.url truck_url(truck, format: :json)
