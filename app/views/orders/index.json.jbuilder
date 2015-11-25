json.array!(@orders) do |order|
  json.extract! order, :id, :room_id, :arrival, :leaving
  json.url order_url(order, format: :json)
end
