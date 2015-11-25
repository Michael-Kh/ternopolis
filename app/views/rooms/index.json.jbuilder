json.array!(@rooms) do |room|
  json.extract! room, :id, :room_type, :description, :price
  json.url room_url(room, format: :json)
end
