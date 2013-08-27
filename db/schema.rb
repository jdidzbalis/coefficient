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

ActiveRecord::Schema.define(:version => 20130826183242) do

  create_table "projects", :force => true do |t|
    t.string   "project_status"
    t.decimal  "project_IRR"
    t.decimal  "project_payback"
    t.decimal  "project_costsavings"
    t.decimal  "project_energysavings"
    t.decimal  "project_equipmentlife"
    t.string   "project_technology"
    t.text     "facility_auditconsultant"
    t.text     "facility_business"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "facility_name"
    t.integer  "user_id"
    t.string   "audit_file_name"
    t.string   "audit_content_type"
    t.datetime "audit_updated_at"
    t.string   "facility_location_address1"
    t.string   "facility_location_address2"
    t.integer  "facility_location_zip"
    t.string   "facility_location_state"
    t.string   "facility_type"
    t.integer  "facility_totalenergyuse"
    t.string   "project_type"
    t.decimal  "facility_energyprice"
    t.string   "energypurchase"
    t.integer  "project_cost"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_firstname"
    t.boolean  "user_lender"
    t.string   "user_lastname"
    t.string   "user_company"
    t.string   "user_title"
    t.string   "user_phonenumber"
  end

end
