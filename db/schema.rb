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

ActiveRecord::Schema.define(version: 20150409233831) do

  create_table "portfolios", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "portfolios_securities", id: false, force: :cascade do |t|
    t.integer "portfolio_id", null: false
    t.integer "security_id",  null: false
  end

  add_index "portfolios_securities", ["portfolio_id"], name: "index_portfolios_securities_on_portfolio_id"
  add_index "portfolios_securities", ["security_id"], name: "index_portfolios_securities_on_security_id"

  create_table "portfolios_users", id: false, force: :cascade do |t|
    t.integer "user_id",      null: false
    t.integer "portfolio_id", null: false
  end

  add_index "portfolios_users", ["portfolio_id"], name: "index_portfolios_users_on_portfolio_id"
  add_index "portfolios_users", ["user_id"], name: "index_portfolios_users_on_user_id"

  create_table "securities", force: :cascade do |t|
    t.string   "name"
    t.decimal  "bookprice"
    t.decimal  "marketprice"
    t.decimal  "sigma"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
