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

ActiveRecord::Schema.define(:version => 20121202152402) do

  create_table "winnings", :force => true do |t|
    t.date     "date_start"
    t.date     "date_end"
    t.boolean  "availibility_weekday_mon"
    t.boolean  "availibility_weekday_tue"
    t.boolean  "availibility_weekday_wed"
    t.boolean  "availibility_weekday_thu"
    t.boolean  "availibility_weekday_fri"
    t.boolean  "availibility_weekday_sat"
    t.boolean  "availibility_weekday_sun"
    t.integer  "availible_hours_start"
    t.integer  "availible_hours_end"
    t.integer  "x"
    t.string   "measure"
    t.string   "type"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

end
