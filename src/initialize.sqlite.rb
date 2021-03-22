require "sqlite3"
require "active_record"
require "nx"
require "nx-date-time"
require "open-uri"
require "nokogiri"
require "require_all"

include Nx

# init entities
require_relative "entities/application_record"
require_rel "./entities/*.rb"
require_rel "./spiders/*.rb"

# expect time_zone: Asia/Shanghai
ActiveRecord::Base.default_timezone = :local

# init db
ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db/boilerplate_db_name.sqlite3",
  pool: 10,
)

# basic app constants
APP_ROOT = File.expand_path(".")
