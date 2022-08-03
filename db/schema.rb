# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_22_194456) do

  create_table "lawyers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "cases"
    t.integer "retainer"
    t.string "profile"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "litigations", force: :cascade do |t|
    t.string "caption"
    t.string "court"
    t.string "judge"
    t.string "opposing_party"
    t.string "status"
    t.integer "costs"
    t.integer "lawyer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lawyer_id"], name: "index_litigations_on_lawyer_id"
  end

  add_foreign_key "litigations", "lawyers"
end
