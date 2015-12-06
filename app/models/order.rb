class Order < ActiveRecord::Base
  belongs_to :dish

  attr_accessor :coupon_code
end
