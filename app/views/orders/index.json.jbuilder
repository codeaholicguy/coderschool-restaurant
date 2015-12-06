json.array!(@orders) do |order|
  json.extract! order, :id, :name, :phone, :address, :total_price, :discount_rate, :dish_id
  json.url order_url(order, format: :json)
end
