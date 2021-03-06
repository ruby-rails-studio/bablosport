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

ActiveRecord::Schema.define(version: 20170320124818) do

  create_table "bets", force: :cascade do |t|
    t.decimal  "value"
    t.decimal  "gain"
    t.integer  "user_id"
    t.text     "description"
    t.string   "event"
    t.string   "event_type"
    t.boolean  "is_finish",   default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["user_id"], name: "index_bets_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "cover"
    t.boolean  "root",        default: true
    t.integer  "root_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "url"
    t.string   "ref_url"
    t.string   "cover"
    t.string   "icon"
    t.boolean  "is_published", default: true
    t.integer  "category_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "slug"
    t.index ["category_id"], name: "index_items_on_category_id"
    t.index ["slug"], name: "index_items_on_slug", unique: true
  end

  create_table "landings", force: :cascade do |t|
    t.string   "name"
    t.integer  "item_id"
    t.text     "code"
    t.string   "css_file"
    t.string   "js_file"
    t.boolean  "is_published",   default: true
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "slug"
    t.string   "title"
    t.text     "description"
    t.string   "facebook_image"
    t.string   "twitter_image"
    t.index ["item_id"], name: "index_landings_on_item_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "is_admin",               default: false
    t.boolean  "is_moderator",           default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
