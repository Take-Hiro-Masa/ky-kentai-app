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

ActiveRecord::Schema.define(version: 2020_02_18_042128) do

  create_table "companies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "company_name", null: false
    t.string "postal_code", null: false
    t.string "prefecture", null: false
    t.string "city", null: false
    t.string "block", null: false
    t.string "building"
    t.string "phone_num", null: false
    t.string "Representative", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "report_id", null: false
    t.bigint "company_id", null: false
    t.string "construction_name", null: false
    t.string "contractor", null: false
    t.string "industrial_accident", null: false
    t.string "order_source", null: false
    t.string "process", null: false
    t.string "slogan", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_notifications_on_company_id"
    t.index ["report_id"], name: "index_notifications_on_report_id"
  end

  create_table "reports", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "work_site", null: false
    t.string "work_content", null: false
    t.string "leader", null: false
    t.string "safety_goals", null: false
    t.string "workers", null: false
    t.text "ky", null: false
    t.text "measures", null: false
    t.text "sign", null: false
    t.bigint "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_reports_on_company_id"
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "f_name", null: false
    t.string "l_name", null: false
    t.string "f_name_kana", null: false
    t.string "l_name_kana", null: false
    t.string "gender", null: false
    t.integer "birth_yyyy_id", null: false
    t.integer "birth_mm_id", null: false
    t.integer "birth_dd_id", null: false
    t.string "job_type", null: false
    t.string "blood_type", null: false
    t.bigint "company_id", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "notifications", "companies"
  add_foreign_key "notifications", "reports"
  add_foreign_key "reports", "users"
end
