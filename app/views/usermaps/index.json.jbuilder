json.array!(@usermaps) do |usermap|
  json.extract! usermap, :id, :latitude, :longitude, :address, :description, :title
  json.url usermap_url(usermap, format: :json)
end
