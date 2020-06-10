require "sqlite3"
require "active_record"
require "nx"

include Nx

# init models
require_relative "models/application_record"
require_relative "models/boilerplate_db_name"

# init db
ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db/boilerplate_db_name.sqlite3",
  pool: 10,
)

# basic app constants
APP_ROOT = File.expand_path(".")
