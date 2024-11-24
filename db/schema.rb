# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_11_24_143046) do
  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_number"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image", default: "https://media.istockphoto.com/id/1446478827/photo/a-chef-is-cooking-in-his-restaurants-kitchen.jpg?s=612x612&w=0&k=20&c=jwKJmGErrLe2XsTWNYEEyiNicudYVA4j8jvnTiJdp58="
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "content"
    t.integer "restaurant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
  end

  add_foreign_key "reviews", "restaurants"
end
