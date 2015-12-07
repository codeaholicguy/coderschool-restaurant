class Dish < ActiveRecord::Base
  belongs_to :menu
  
  has_many :orders
  has_many :reviews

  paginates_per 7

  def self.find_by_menu(menu_id)
    where(menu_id: menu_id)
  end
end
