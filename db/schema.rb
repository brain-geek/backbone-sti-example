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

ActiveRecord::Schema.define(:version => 20121202173137) do

  create_table "time_based_winnings", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "winnings", :force => true do |t|
    t.datetime "date_start"
    t.datetime "date_end"
    t.boolean  "availibility_weekday_mon", :default => false
    t.boolean  "availibility_weekday_tue", :default => false
    t.boolean  "availibility_weekday_wed", :default => false
    t.boolean  "availibility_weekday_thu", :default => false
    t.boolean  "availibility_weekday_fri", :default => false
    t.boolean  "availibility_weekday_sat", :default => false
    t.boolean  "availibility_weekday_sun", :default => false
    t.integer  "availible_hours_start"
    t.integer  "availible_hours_end"
    t.integer  "x"
    t.string   "measure"
    t.string   "type"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

end
