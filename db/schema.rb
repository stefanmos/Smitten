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

ActiveRecord::Schema.define(version: 20160727183855) do

  create_table "invites", force: :cascade do |t|
    t.string   "header_title"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "background_color"
    t.string   "font_color"
    t.string   "font_family"
    t.string   "header_image_file_name"
    t.string   "header_image_content_type"
    t.integer  "header_image_file_size"
    t.datetime "header_image_updated_at"
    t.string   "wedding_date"
    t.string   "bride_image_file_name"
    t.string   "bride_image_content_type"
    t.integer  "bride_image_file_size"
    t.datetime "bride_image_updated_at"
    t.string   "bride_name"
    t.text     "bride_description"
    t.string   "groom_image_file_name"
    t.string   "groom_image_content_type"
    t.integer  "groom_image_file_size"
    t.datetime "groom_image_updated_at"
    t.string   "groom_name"
    t.text     "groom_description"
    t.text     "about_title"
    t.text     "about_description"
    t.string   "map_coordinates"
    t.string   "map_description"
    t.         "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
