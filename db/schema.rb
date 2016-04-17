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

ActiveRecord::Schema.define(version: 20160417154751) do

  create_table "actuator_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actuators", force: :cascade do |t|
    t.string   "name"
    t.integer  "node_id"
    t.integer  "actuatorType_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "actuators", ["actuatorType_id"], name: "index_actuators_on_actuatorType_id"
  add_index "actuators", ["node_id"], name: "index_actuators_on_node_id"

  create_table "homes", force: :cascade do |t|
    t.string   "name"
    t.integer  "node_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "homes", ["node_id"], name: "index_homes_on_node_id"

  create_table "nodes", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "home_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "nodes", ["home_id"], name: "index_nodes_on_home_id"

  create_table "sensor_actions", force: :cascade do |t|
    t.string   "name"
    t.integer  "sensorType_id"
    t.string   "action"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "sensor_actions", ["sensorType_id"], name: "index_sensor_actions_on_sensorType_id"

  create_table "sensor_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sensors", force: :cascade do |t|
    t.string   "name"
    t.integer  "node_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "sensorType_id"
  end

  add_index "sensors", ["node_id"], name: "index_sensors_on_node_id"
  add_index "sensors", ["sensorType_id"], name: "index_sensors_on_sensorType_id"

end
