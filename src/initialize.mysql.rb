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
  :adapter => "mysql2",
  :host => "localhost",
  :username => "root",
  :password => "",
  :database => "boilerplate_db_name",
  :pool => 100,
)

# basic app constants
APP_ROOT = File.expand_path(".")
