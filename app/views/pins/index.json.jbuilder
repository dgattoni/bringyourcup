json.array!(@pins) do |pin|
  json.extract! pin, :id, :title, :photo
  json.url pin_url(pin, format: :json)
end
