require "sqlite3"
require "active_record"
require "nx"

include Nx

# init models
require_relative "models/application_record"
require_relative "models/template"

# init db
ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db/template.sqlite3",
  pool: 10,
)

# basic app constants
APP_ROOT = File.expand_path(".")
