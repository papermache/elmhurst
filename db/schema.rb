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

ActiveRecord::Schema.define(version: 20190703191729) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_histories", force: :cascade do |t|
    t.string   "grant"
    t.datetime "date"
    t.string   "account"
    t.string   "market"
    t.float    "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "annotations", force: :cascade do |t|
    t.string   "Item_Name"
    t.float    "Item_Price"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "Project_Select"
    t.string   "Merchant_Name"
    t.string   "Source"
    t.string   "Note"
    t.float    "item_price_dup"
    t.decimal  "balance",               default: 0.0
    t.datetime "date"
    t.string   "date_status"
    t.integer  "annotation_creator_id"
  end

  create_table "authorships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "authorships", ["project_id"], name: "index_authorships_on_project_id", using: :btree
  add_index "authorships", ["user_id"], name: "index_authorships_on_user_id", using: :btree

  create_table "graphs", force: :cascade do |t|
    t.float    "graph_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "item_name"
    t.float    "item_price"
    t.string   "vendor"
    t.string   "user"
    t.string   "invoice"
  end

  create_table "investments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "investments", ["project_id"], name: "index_investments_on_project_id", using: :btree
  add_index "investments", ["user_id"], name: "index_investments_on_user_id", using: :btree

  create_table "investors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "memberships", ["project_id"], name: "index_memberships_on_project_id", using: :btree
  add_index "memberships", ["user_id"], name: "index_memberships_on_user_id", using: :btree

  create_table "order_books", force: :cascade do |t|
    t.string   "name"
    t.integer  "trade_principal"
    t.string   "security"
    t.float    "security_price"
    t.decimal  "shares",             precision: 10, scale: 2
    t.integer  "security_principal"
    t.integer  "elmhurst_principal"
    t.float    "profit_loss"
    t.string   "receipient"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "shares", force: :cascade do |t|
    t.integer  "shares"
    t.integer  "investment_principal"
    t.integer  "user_id"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "investment_principal_dup"
    t.boolean  "is_trade_open",            default: false
  end

  add_index "shares", ["user_id"], name: "index_shares_on_user_id", using: :btree

  create_table "tokens", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "token"
    t.datetime "start_at"
    t.datetime "end_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tokens", ["user_id"], name: "index_tokens_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.boolean  "researcher"
    t.boolean  "investor"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "avatar"
    t.string   "email",                            default: "", null: false
    t.string   "encrypted_password",               default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.string   "authentication_token"
    t.integer  "dln_no",                 limit: 8
    t.text     "address"
    t.string   "image"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "account_histories", "users"
  add_foreign_key "authorships", "projects"
  add_foreign_key "authorships", "users"
  add_foreign_key "investments", "projects"
  add_foreign_key "investments", "users"
  add_foreign_key "memberships", "projects"
  add_foreign_key "memberships", "users"
  add_foreign_key "shares", "users"
  add_foreign_key "tokens", "users"
end
