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

ActiveRecord::Schema.define(:version => 20120420162256) do

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.integer  "duration_in_days"
    t.integer  "theory_duration"
    t.integer  "practicals_duration"
    t.text     "special_instructions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "districts", :force => true do |t|
    t.string "name"
    t.string "state_id"
  end

  create_table "participants", :force => true do |t|
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "address_line_3"
    t.string   "address_line_4"
    t.integer  "pin_code"
    t.string   "status"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "village_id"
    t.date     "date_of_birth"
    t.integer  "age"
    t.string   "gender"
  end

  create_table "programs", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string "name"
  end

  create_table "trainee_batches", :force => true do |t|
    t.string   "training_calendar_id"
    t.string   "participant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "training_calendars", :force => true do |t|
    t.string   "training_center_id"
    t.string   "course_id"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "batch_size"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
  end

  create_table "training_centers", :force => true do |t|
    t.string   "name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "address_line_3"
    t.string   "address_line_4"
    t.string   "village"
    t.string   "district"
    t.string   "state"
    t.string   "country"
    t.integer  "pin_code"
    t.string   "status"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "user_name"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "villages", :force => true do |t|
    t.string "name"
    t.string "district_id"
  end

end
