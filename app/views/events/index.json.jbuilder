json.array!(@events) do |event|
  json.extract! event, :id, :org_id, :name
  json.url event_url(event, format: :json)
end
