class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.text :body
      t.integer :star
      t.references :dish, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
