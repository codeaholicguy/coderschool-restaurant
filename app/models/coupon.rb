class Coupon < ActiveRecord::Base

  def self.find_by_code(coupon_code)
    where(code: coupon_code).first
  end
end
