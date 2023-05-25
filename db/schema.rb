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

ActiveRecord::Schema[7.0].define(version: 2023_05_24_135859) do
  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "cars", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.string "car_category"
    t.string "car_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_cars_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "customer_name"
    t.date "customer_DoB"
    t.string "customer_phone"
    t.string "customer_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "parking_fees", force: :cascade do |t|
    t.string "parking_fees_type"
    t.string "parking_fees_description"
    t.integer "parking_fees_money"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parking_slots", force: :cascade do |t|
    t.string "parking_slot_type"
    t.string "parking_slot_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parking_statuses", force: :cascade do |t|
    t.integer "parking_fee_id", null: false
    t.integer "parking_slot_id", null: false
    t.integer "car_id", null: false
    t.integer "customer_id", null: false
    t.integer "permission_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_parking_statuses_on_car_id"
    t.index ["customer_id"], name: "index_parking_statuses_on_customer_id"
    t.index ["parking_fee_id"], name: "index_parking_statuses_on_parking_fee_id"
    t.index ["parking_slot_id"], name: "index_parking_statuses_on_parking_slot_id"
    t.index ["permission_id"], name: "index_parking_statuses_on_permission_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.integer "role_of_supervisor_id", null: false
    t.integer "supervisor_id", null: false
    t.date "permission_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_of_supervisor_id"], name: "index_permissions_on_role_of_supervisor_id"
    t.index ["supervisor_id"], name: "index_permissions_on_supervisor_id"
  end

  create_table "role_of_supervisors", force: :cascade do |t|
    t.string "role_of_supervisor_category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supervisors", force: :cascade do |t|
    t.integer "role_of_supervisor_id", null: false
    t.string "supervisor_name"
    t.date "supervisor_DoB"
    t.string "supervisor_address"
    t.string "supervisor_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_of_supervisor_id"], name: "index_supervisors_on_role_of_supervisor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "cars", "customers"
  add_foreign_key "parking_statuses", "cars"
  add_foreign_key "parking_statuses", "customers"
  add_foreign_key "parking_statuses", "parking_fees"
  add_foreign_key "parking_statuses", "parking_slots"
  add_foreign_key "parking_statuses", "permissions"
  add_foreign_key "permissions", "role_of_supervisors"
  add_foreign_key "permissions", "supervisors"
  add_foreign_key "supervisors", "role_of_supervisors"
end
