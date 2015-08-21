json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :Name, :Decription, :Location, :Tag
  json.url restaurant_url(restaurant, format: :json)
end
