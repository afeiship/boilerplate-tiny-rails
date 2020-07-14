require "sqlite3"
require "active_record"
require_relative "../src/initialize"

ActiveRecord::Schema.define do
  drop_table :posts
  create_table :posts, force: :cascade do |t|
    t.string :url
    t.string :title
    t.text :question
    t.text :answer
    t.string :tags
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end
end
