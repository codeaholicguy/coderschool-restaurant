class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.string :image_url
      t.references :menu, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
