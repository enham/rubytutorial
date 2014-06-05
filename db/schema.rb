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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140605185419) do

  create_table "citizenship_classes", :force => true do |t|
    t.string   "name"
    t.string   "instructor"
    t.date     "delivery_date"
    t.integer  "hours"
    t.integer  "grantee_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "citizenship_classes", ["grantee_id"], :name => "index_citizenship_classes_on_grantee_id"

  create_table "grantees", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "grant_amount"
    t.date     "grant_date"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
