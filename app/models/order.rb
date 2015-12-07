class Order < ActiveRecord::Base
  belongs_to :dish

  validates :name, :presence => true
  validates :address, :presence => true
  validates :phone, :presence => true

  attr_accessor :coupon_code
end
