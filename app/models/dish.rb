class Dish < ActiveRecord::Base
  belongs_to :menu
  has_many :orders

  def self.find_by_menu(menu_id)
    where(menu_id: menu_id)
  end
end
