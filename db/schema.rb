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

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20121126092429) do

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "mobile_number"
    t.string   "account_name"
    t.string   "account_number"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.boolean  "admin"
=======
ActiveRecord::Schema.define(:version => 20121126124843) do

  create_table "movies", :force => true do |t|
    t.string   "name"
    t.string   "genre"
    t.integer  "duration"
    t.integer  "rating"
    t.string   "language"
    t.text     "cast"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "photo"
>>>>>>> 08483deb6021caaf7354953db0e04bd5a6088e77
  end

end
