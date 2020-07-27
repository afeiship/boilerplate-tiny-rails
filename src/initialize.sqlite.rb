require "sqlite3"
require "active_record"
require "nx"
require "nx-date-time"
require "open-uri"
require "nokogiri"

include Nx

# init models
require_relative "models/application_record"
require_relative "models/url"
require_relative "models/page"
require_relative "models/post"
require_relative "spiders/spider_page"
require_relative "spiders/spider_url"
require_relative "spiders/spider_post"

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
