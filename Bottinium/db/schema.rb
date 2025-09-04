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

ActiveRecord::Schema[8.0].define(version: 2025_09_04_134513) do
  create_table "domiciles", force: :cascade do |t|
    t.integer "numero", null: false
    t.string "rue", null: false
    t.string "ville", null: false
    t.string "province", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pays_id", null: false
    t.index ["pays_id"], name: "index_domiciles_on_pays_id"
  end

  create_table "domiciles_users", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "domicile_id", null: false
    t.index ["domicile_id"], name: "index_domiciles_users_on_domicile_id"
    t.index ["user_id"], name: "index_domiciles_users_on_user_id"
  end

  create_table "pays", force: :cascade do |t|
    t.string "nom", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "nom", null: false
    t.string "prenom", null: false
    t.string "telephone", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "domiciles", "pays"
  add_foreign_key "domiciles_users", "domiciles"
  add_foreign_key "domiciles_users", "users"
end
