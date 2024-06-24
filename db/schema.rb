# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_06_24_193250) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "owner_name"
    t.float "balance", default: 0.0
  end

  create_table "transaction_types", force: :cascade do |t|
    t.string "description"
    t.string "operator"
  end

  create_table "transactions", force: :cascade do |t|
    t.string "credit_card"
    t.string "beneficary_document"
    t.float "amount"
    t.datetime "created_at"
    t.bigint "company_id"
    t.bigint "transaction_type_id"
    t.index ["company_id"], name: "index_transactions_on_company_id"
    t.index ["transaction_type_id"], name: "index_transactions_on_transaction_type_id"
  end

  add_foreign_key "transactions", "companies"
  add_foreign_key "transactions", "transaction_types"
end
