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

ActiveRecord::Schema.define(version: 2023_01_31_094706) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "sanction_id"
    t.text "text"
    t.datetime "sent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments_sanctions", force: :cascade do |t|
    t.integer "comment_id"
    t.integer "sanction_id"
  end

  create_table "comments_users", force: :cascade do |t|
    t.integer "comment_id"
    t.integer "user_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "official_name"
    t.string "native_name"
    t.text "flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "country_code"
    t.text "description"
  end

  create_table "countries_country_names", id: false, force: :cascade do |t|
    t.integer "country_id"
    t.integer "country_name_id"
  end

  create_table "countries_dictators", id: false, force: :cascade do |t|
    t.integer "country_id"
    t.integer "dictator_id"
  end

  create_table "countries_sanctions", id: false, force: :cascade do |t|
    t.integer "country_id"
    t.integer "sanction_id"
  end

  create_table "country_names", force: :cascade do |t|
    t.string "name"
    t.string "alt_name"
    t.integer "country_id"
  end

  create_table "dictators", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.string "nationality"
    t.integer "country_id"
    t.integer "user_id"
    t.date "dob"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dictators_favourites", id: false, force: :cascade do |t|
    t.integer "dictator_id"
    t.integer "favourite_id"
  end

  create_table "dictators_users", id: false, force: :cascade do |t|
    t.integer "dictator_id"
    t.integer "user_id"
  end

  create_table "favourites", force: :cascade do |t|
    t.integer "sanction_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favourites_sanctions", force: :cascade do |t|
    t.integer "favourite_id"
    t.integer "sanction_id"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "receiver_id"
    t.text "text"
    t.datetime "sent"
    t.boolean "read", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages_users", force: :cascade do |t|
    t.integer "message_id"
    t.integer "user_id"
  end

  create_table "sanctions", force: :cascade do |t|
    t.string "name"
    t.string "nationality"
    t.integer "country_id"
    t.integer "user_id"
    t.text "risk"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sanctions_users", id: false, force: :cascade do |t|
    t.integer "sanction_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.text "email"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
