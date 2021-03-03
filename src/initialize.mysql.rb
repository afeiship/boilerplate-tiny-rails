require "sqlite3"
require "active_record"
require "nx"
require "nx-date-time"
require "open-uri"
require "nokogiri"

include Nx

# init entities
require_relative "entities/application_record"
require_relative "entities/url"
require_relative "entities/page"
require_relative "entities/post"
require_relative "spiders/spider_page"
require_relative "spiders/spider_url"
require_relative "spiders/spider_post"

# expect time_zone: Asia/Shanghai
ActiveRecord::Base.default_timezone = :local

# init db
ActiveRecord::Base.establish_connection(
  adapter: "mysql2",
  host: "localhost",
  username: "root",
  password: "",
  database: "boilerplate_db_name",
  pool: 100,
  encoding: 'utf8mb4'
  collation: 'utf8mb4_general_ci'
)

# basic app constants
APP_ROOT = File.expand_path(".")
