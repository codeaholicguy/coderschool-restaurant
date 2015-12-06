json.array!(@reviews) do |review|
  json.extract! review, :id, :name, :body, :star, :dish_id
  json.url review_url(review, format: :json)
end
