require "sqlite3"
require "active_record"
require_relative "../src/initialize"

ActiveRecord::Schema.define do
  create_table :boilerplate_db_names, force: :cascade do |t|
    t.string :name
    t.string :url
    t.string :grade
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end
end
