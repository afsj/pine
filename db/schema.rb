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

ActiveRecord::Schema.define(version: 20150205085937) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmarks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.integer  "code",       null: false
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "degree_levels", force: :cascade do |t|
    t.integer  "code",       null: false
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "major_fields", force: :cascade do |t|
    t.integer  "code",       null: false
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "minor_fields", force: :cascade do |t|
    t.integer  "code",       null: false
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "opportunities", force: :cascade do |t|
    t.string   "organization",            null: false
    t.string   "title",                   null: false
    t.string   "location_country",        null: false
    t.string   "location_city",           null: false
    t.string   "contact_details",         null: false
    t.date     "deadline",                null: false
    t.integer  "post_type",               null: false
    t.decimal  "salary"
    t.string   "keywords"
    t.text     "post_details"
    t.integer  "user_id"
    t.integer  "opportunity_category_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "opportunity_categories", force: :cascade do |t|
    t.integer  "post_type",  null: false
    t.integer  "code",       null: false
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_infos", force: :cascade do |t|
    t.string   "first_name",         null: false
    t.string   "last_name",          null: false
    t.string   "member_type",        null: false
    t.string   "occupation"
    t.string   "degree_level_name"
    t.string   "major_field_name"
    t.string   "minor_field_name"
    t.string   "field_keywords"
    t.string   "organization_one"
    t.string   "organization_two"
    t.string   "organization_three"
    t.string   "organization_four"
    t.string   "organization_five"
    t.string   "residence_country"
    t.string   "residence_city"
    t.string   "personal_website"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
