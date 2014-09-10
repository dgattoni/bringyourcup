json.array!(@characters) do |character|
  json.extract! character, :id, :name, :address, :longitude, :latitude, :gmaps
  json.url character_url(character, format: :json)
end
