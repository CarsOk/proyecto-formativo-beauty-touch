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

ActiveRecord::Schema.define(version: 2021_08_02_001845) do

  create_table "administrators", force: :cascade do |t|
    t.integer "id_Adm"
    t.string "name1_Adm"
    t.string "name2_Adm"
    t.string "last1_Adm"
    t.string "last2_Adm"
    t.date "birthday_Adm"
    t.integer "Cellphone_Adm"
    t.string "Email_Adm"
    t.string "Password_Adm"
    t.string "Direction_Adm"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clients", force: :cascade do |t|
    t.integer "id_Cli"
    t.string "name1_Cli"
    t.string "name2_Cli"
    t.string "last1_cli"
    t.string "last2_cli"
    t.date "birthday_Cli"
    t.integer "Cellphone_Cli"
    t.string "Email_Cli"
    t.string "Password_Cli"
    t.string "Direction_Cli"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.integer "document"
    t.integer "yead"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
