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

ActiveRecord::Schema.define(version: 2022_10_06_072126) do

  create_table "system_specs", force: :cascade do |t|
    t.string "ip_address"
    t.string "macaddress"
    t.string "hostname"
    t.string "username"
    t.string "manufacturer"
    t.string "operating_system"
    t.string "os_family"
    t.string "distribution"
    t.string "distribution_codename"
    t.string "kernel"
    t.string "kernel_version"
    t.string "total_memory"
    t.string "total_swap"
    t.string "total_storage"
    t.string "free_space"
    t.string "architecture"
    t.string "cpu_architecture"
    t.string "processor_family"
    t.string "processor_manufacturer"
    t.string "processor_version"
    t.string "processor_core_count"
    t.string "processor_frequency"
    t.string "bios_vendor"
    t.string "bios_version"
    t.string "serial_number"
    t.string "product_name"
    t.string "system_uuid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "storage_used"
  end

end
