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

ActiveRecord::Schema.define(:version => 20120319092707) do

  create_table "sites", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "gplus_page_num"
    t.string   "fb_page"
    t.string   "twitter_username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vertical_id"
  end

  add_index "sites", ["vertical_id"], :name => "index_sites_on_vertical_id"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vertical_id"
  end

  add_index "users", ["vertical_id"], :name => "index_users_on_vertical_id"

  create_table "verticals", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
