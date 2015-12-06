# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151206052716) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coupons", force: :cascade do |t|
    t.string   "code"
    t.integer  "discount_rate"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "dishes", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.text     "description"
    t.string   "image_url"
    t.integer  "menu_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "dishes", ["menu_id"], name: "index_dishes_on_menu_id", using: :btree

  create_table "menus", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.decimal  "total_price"
    t.integer  "discount_rate"
    t.integer  "dish_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "orders", ["dish_id"], name: "index_orders_on_dish_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "star"
    t.integer  "dish_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["dish_id"], name: "index_reviews_on_dish_id", using: :btree

  add_foreign_key "dishes", "menus"
  add_foreign_key "orders", "dishes"
  add_foreign_key "reviews", "dishes"
end
