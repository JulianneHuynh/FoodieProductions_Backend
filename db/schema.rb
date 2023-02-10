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

ActiveRecord::Schema[7.0].define(version: 2023_02_09_070231) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cookbooks", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "cover_image"
    t.bigint "user_id", null: false
    t.bigint "recipe_id", null: false
    t.bigint "opening_note_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["opening_note_id"], name: "index_cookbooks_on_opening_note_id"
    t.index ["recipe_id"], name: "index_cookbooks_on_recipe_id"
    t.index ["user_id"], name: "index_cookbooks_on_user_id"
  end

  create_table "opening_notes", force: :cascade do |t|
    t.string "image"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipe_boxes", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.bigint "user_id", null: false
    t.bigint "recipe_id", null: false
    t.bigint "opening_note_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["opening_note_id"], name: "index_recipe_boxes_on_opening_note_id"
    t.index ["recipe_id"], name: "index_recipe_boxes_on_recipe_id"
    t.index ["user_id"], name: "index_recipe_boxes_on_user_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "prep_time"
    t.string "cook_time"
    t.string "yield"
    t.text "ingredients"
    t.text "instructions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_devises", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_user_devises_on_email", unique: true
    t.index ["reset_password_token"], name: "index_user_devises_on_reset_password_token", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cookbooks", "opening_notes"
  add_foreign_key "cookbooks", "recipes"
  add_foreign_key "cookbooks", "users"
  add_foreign_key "recipe_boxes", "opening_notes"
  add_foreign_key "recipe_boxes", "recipes"
  add_foreign_key "recipe_boxes", "users"
end