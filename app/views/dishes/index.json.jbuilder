json.array!(@dishes) do |dish|
  json.extract! dish, :id, :name, :price, :description, :image_url, :menu_id
  json.url dish_url(dish, format: :json)
end
