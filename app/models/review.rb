class Review < ActiveRecord::Base
  belongs_to :dish

  paginates_per 4

  def self.find_by_dish(dish_id)
    where(dish_id: dish_id)
  end
end
