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

ActiveRecord::Schema.define(:version => 20110224184303) do

  create_table "comments", :force => true do |t|
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "divisions", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "league_id"
    t.string   "name",       :limit => 50, :null => false
  end

  create_table "drafts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "player_id"
    t.integer  "team_id"
    t.date     "date"
    t.integer  "round"
    t.integer  "pick"
    t.integer  "overall"
    t.string   "college",    :limit => 100
    t.text     "notes"
  end

  create_table "fans", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",       :limit => 100, :null => false
  end

  create_table "fans_teams", :id => false, :force => true do |t|
    t.integer "fan_id"
    t.integer "team_id"
  end

  create_table "field_tests", :force => true do |t|
    t.string   "string_field"
    t.text     "text_field"
    t.integer  "integer_field"
    t.float    "float_field"
    t.decimal  "decimal_field"
    t.datetime "datetime_field"
    t.datetime "timestamp_field"
    t.time     "time_field"
    t.date     "date_field"
    t.boolean  "boolean_field"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leagues", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",       :limit => 50, :null => false
  end

  create_table "players", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.integer  "team_id"
    t.string   "name",       :limit => 100,                    :null => false
    t.string   "position",   :limit => 50
    t.integer  "number",                                       :null => false
    t.boolean  "retired",                   :default => false
    t.boolean  "injured",                   :default => false
    t.date     "born_on"
    t.text     "notes"
    t.boolean  "suspended",                 :default => false
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.string   "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_histories_on_item_and_table_and_month_and_year"

  create_table "rel_tests", :force => true do |t|
    t.integer  "league_id"
    t.integer  "division_id", :null => false
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "league_id"
    t.integer  "division_id"
    t.string   "name",           :limit => 50
    t.string   "logo_url"
    t.string   "manager",        :limit => 100,                                :null => false
    t.string   "ballpark",       :limit => 100
    t.string   "mascot",         :limit => 100
    t.integer  "founded"
    t.integer  "wins"
    t.integer  "losses"
    t.float    "win_percentage"
    t.decimal  "revenue",                       :precision => 18, :scale => 2
    t.string   "color"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.integer  "sign_in_count"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "roles"
  end

end
