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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150218164617) do

  create_table "claims", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "expense_id"
  end

  add_index "claims", ["expense_id"], name: "index_claims_on_expense_id", using: :btree

  create_table "employees", force: true do |t|
    t.string   "name"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "expense_id"
    t.integer  "claim_id"
  end

  add_index "employees", ["claim_id"], name: "index_employees_on_claim_id", using: :btree
  add_index "employees", ["expense_id"], name: "index_employees_on_expense_id", using: :btree

  create_table "expenses", force: true do |t|
    t.datetime "date"
    t.string   "category"
    t.string   "participants"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.string   "atos_legal_entity"
    t.integer  "invoice_code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "expense_id"
  end

  add_index "projects", ["expense_id"], name: "index_projects_on_expense_id", using: :btree

end
