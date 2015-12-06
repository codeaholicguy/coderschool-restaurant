json.array!(@coupons) do |coupon|
  json.extract! coupon, :id, :code, :discount_rate
  json.url coupon_url(coupon, format: :json)
end
