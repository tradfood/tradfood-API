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

ActiveRecord::Schema.define(version: 20180226105455) do

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "highlight"
    t.boolean  "publish"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image"
    t.string   "slug"
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "ingredients"
    t.text     "recipe"
    t.time     "preparation_time"
    t.time     "cooking_time"
    t.string   "meal_type"
    t.integer  "difficulty"
    t.string   "season"
    t.boolean  "highlight"
    t.boolean  "publish"
    t.integer  "city_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "image"
    t.string   "slug"
    t.integer  "servings"
    t.string   "serving_type"
    t.index ["city_id"], name: "index_recipes_on_city_id"
  end

end
