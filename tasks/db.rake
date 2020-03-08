require_relative "../src/initialize"

namespace :db do
  desc "Seed for project."
  task :seed do
    ruby "db/seeds.rb"
  end

  desc "Setup database."
  task :setup do
    system "cp db/template.sqlite3.default db/template.sqlite3"
    ruby "db/schema.rb"
  end
end
