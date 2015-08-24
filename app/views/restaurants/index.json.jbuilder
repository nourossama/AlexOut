json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :description, :tag, :rating
  json.url restaurant_url(restaurant, format: :json)
end
