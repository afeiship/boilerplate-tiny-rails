require "sqlite3"
require "active_record"
require_relative "../src/initialize"

ActiveRecord::Schema.define do
  create_table :posts, force: :cascade do |t|
    t.string :url
    t.string :title
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table :urls, force: :cascade do |t|
    t.string :url
    t.boolean :grabbed, default: :false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table :pages, force: :cascade do |t|
    t.string :url
    t.boolean :grabbed, default: :false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end
end
