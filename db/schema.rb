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

ActiveRecord::Schema.define(version: 2018_09_10_065023) do

  create_table "emp_projects", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_emp_projects_on_employee_id"
    t.index ["project_id"], name: "index_emp_projects_on_project_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.integer "salary"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_employees_on_project_id"
  end

  create_table "expenses", force: :cascade do |t|
    t.string "exp_type"
    t.float "amount"
    t.date "month"
    t.datetime "paid"
    t.integer "invoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invoice_id"], name: "index_expenses_on_invoice_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.string "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "paid"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_invoices_on_project_id"
  end

  create_table "managers", force: :cascade do |t|
    t.string "name"
    t.integer "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_managers_on_employee_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "inv_freq"
    t.float "hourly_rate"
    t.integer "manager_id"
    t.integer "invoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invoice_id"], name: "index_projects_on_invoice_id"
    t.index ["manager_id"], name: "index_projects_on_manager_id"
  end

  create_table "rec_expenses", force: :cascade do |t|
    t.string "name"
    t.string "frequency"
    t.integer "expense_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["expense_id"], name: "index_rec_expenses_on_expense_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.boolean "billable"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_tasks_on_project_id"
  end

end
