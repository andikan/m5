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

ActiveRecord::Schema.define(:version => 0) do

  create_table "art", :id => false, :force => true do |t|
    t.integer "id",                  :null => false
    t.text    "name", :limit => 255, :null => false
  end

  create_table "creative_street", :id => false, :force => true do |t|
    t.integer "id",                            :null => false
    t.text    "name",                          :null => false
    t.text    "address",                       :null => false
    t.text    "tel",       :limit => 255
    t.text    "open_time"
    t.text    "url"
    t.float   "latitude"
    t.float   "longitude"
    t.text    "image",     :limit => 16777215
  end

  create_table "mrt_spotships", :id => false, :force => true do |t|
    t.integer "mrt_id",  :null => false
    t.integer "spot_id", :null => false
  end

  add_index "mrt_spotships", ["mrt_id", "spot_id"], :name => "mrt_id"

  create_table "mrts", :force => true do |t|
    t.text    "name",      :limit => 255,      :null => false
    t.integer "number",                        :null => false
    t.text    "address",   :limit => 16777215, :null => false
    t.float   "latitude",                      :null => false
    t.float   "longitude",                     :null => false
  end

  create_table "spots", :force => true do |t|
    t.text  "name",                          :null => false
    t.text  "address",                       :null => false
    t.text  "tel",       :limit => 255
    t.text  "open_time"
    t.text  "url"
    t.float "latitude"
    t.float "longitude"
    t.text  "image",     :limit => 16777215
  end

end
