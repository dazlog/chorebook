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

ActiveRecord::Schema.define(:version => 20121228181803) do

  create_table "children", :force => true do |t|
    t.string   "name"
    t.string   "image"
    t.date     "dob"
    t.integer  "bank",       :default => 0
    t.integer  "total",      :default => 0
    t.integer  "age",        :default => 0
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "chores", :force => true do |t|
    t.string   "name"
    t.integer  "points"
    t.boolean  "completed",  :default => false
    t.integer  "child_id"
    t.date     "due_date"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "rewards", :force => true do |t|
    t.string   "name"
    t.string   "image"
    t.boolean  "rewarded",   :default => false
    t.integer  "costs"
    t.integer  "child_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

end
