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

ActiveRecord::Schema[8.1].define(version: 2026_03_19_151123) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.string "name", null: false
    t.bigint "record_id", null: false
    t.string "record_type", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.string "content_type"
    t.datetime "created_at", null: false
    t.string "filename", null: false
    t.string "key", null: false
    t.text "metadata"
    t.string "service_name", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "checks", force: :cascade do |t|
    t.boolean "abs_light"
    t.boolean "ac_hoses"
    t.boolean "air_compressor"
    t.boolean "air_govenor"
    t.boolean "alternator"
    t.boolean "alternator_wires"
    t.boolean "apron"
    t.boolean "belt"
    t.boolean "brackets"
    t.boolean "bumper"
    t.boolean "cab_abs"
    t.boolean "chain"
    t.boolean "chocks"
    t.boolean "coolant_reservoir"
    t.boolean "coupling_air_lines"
    t.boolean "coupling_electric_lines"
    t.boolean "cr_hoses"
    t.datetime "created_at", null: false
    t.boolean "cross"
    t.string "destionation"
    t.boolean "door_seals"
    t.boolean "door_steps"
    t.boolean "driveshaft"
    t.string "ds_universal_joint"
    t.boolean "exhaust"
    t.boolean "floor"
    t.boolean "frame"
    t.boolean "front_clearance"
    t.boolean "front_panels"
    t.boolean "gear"
    t.boolean "gladhands"
    t.boolean "headlights"
    t.boolean "kingpin"
    t.boolean "leak"
    t.boolean "leaks"
    t.boolean "level"
    t.boolean "lock_release"
    t.boolean "low_air"
    t.text "notes"
    t.boolean "oil_stick"
    t.string "origin"
    t.boolean "pitman_arm"
    t.boolean "pivot_pin"
    t.boolean "platform"
    t.boolean "pop_out"
    t.boolean "rear_clearance"
    t.string "rear_dot"
    t.boolean "seat_belt"
    t.boolean "service_brake"
    t.boolean "sg_hoses"
    t.boolean "side_dot"
    t.boolean "side_panels"
    t.boolean "skid_plate"
    t.boolean "space"
    t.boolean "sr_hoses"
    t.boolean "ss_universal_joint"
    t.boolean "steering_gearbox"
    t.boolean "steering_reservoir"
    t.boolean "steering_shaft"
    t.boolean "tankss"
    t.boolean "tf_br_hosess"
    t.boolean "tf_br_tires"
    t.boolean "tf_chambers"
    t.boolean "tf_drums"
    t.boolean "tf_hubs"
    t.boolean "tf_leaf_spring_mounts"
    t.boolean "tf_leaf_springs"
    t.boolean "tf_lugs"
    t.boolean "tf_rims"
    t.boolean "tf_shock_absorbers"
    t.boolean "tf_shoes"
    t.boolean "tf_slacks"
    t.boolean "tf_u_bolts"
    t.boolean "tf_valves"
    t.boolean "tr_br_hosess"
    t.boolean "tr_chambers"
    t.boolean "tr_drums"
    t.boolean "tr_hubs"
    t.boolean "tr_leaf_spring_mounts"
    t.boolean "tr_leaf_springs"
    t.boolean "tr_lights"
    t.boolean "tr_lugs"
    t.boolean "tr_muds"
    t.boolean "tr_rims"
    t.boolean "tr_shock_absorbers"
    t.boolean "tr_shoes"
    t.boolean "tr_slacks"
    t.boolean "tr_tires"
    t.boolean "tr_u_bolts"
    t.boolean "tr_valves"
    t.boolean "tractor_airbags"
    t.boolean "tractor_brake"
    t.boolean "tractor_doors"
    t.boolean "tractor_handles"
    t.boolean "trailer_air_lines"
    t.boolean "trailer_airbags"
    t.boolean "trailer_br_hoses"
    t.boolean "trailer_brake"
    t.boolean "trailer_chambers"
    t.boolean "trailer_doors"
    t.boolean "trailer_drums"
    t.boolean "trailer_frame"
    t.boolean "trailer_handles"
    t.boolean "trailer_hubs"
    t.boolean "trailer_leaf_spring_mounts"
    t.boolean "trailer_leaf_springs"
    t.boolean "trailer_lights"
    t.boolean "trailer_lugs"
    t.boolean "trailer_muds"
    t.boolean "trailer_rims"
    t.boolean "trailer_shock_absorbers"
    t.boolean "trailer_shoes"
    t.boolean "trailer_slacks"
    t.string "trailer_tag"
    t.boolean "trailer_tires"
    t.boolean "trailer_u_bolts"
    t.boolean "trailer_valves"
    t.date "trip_date"
    t.boolean "truck_clearance_lights"
    t.string "truck_tag"
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.boolean "water_pump"
    t.boolean "wp_hoses"
    t.index ["user_id"], name: "index_checks_on_user_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "ip_address"
    t.datetime "updated_at", null: false
    t.string "user_agent"
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_sessions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.string "email_address", null: false
    t.string "password_digest", null: false
    t.datetime "updated_at", null: false
    t.index ["email_address"], name: "index_users_on_email_address", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "checks", "users"
  add_foreign_key "sessions", "users"
end
