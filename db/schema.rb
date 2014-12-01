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

ActiveRecord::Schema.define(version: 20141130210438) do

  create_table "reports", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "clmp_number"
    t.string   "body_name"
    t.string   "body_id"
    t.string   "site_number"
    t.integer  "contact_id"
    t.float    "lake_depth"
    t.string   "county"
    t.string   "phone_1"
    t.string   "phone_2"
    t.string   "email"
    t.boolean  "previous_year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
