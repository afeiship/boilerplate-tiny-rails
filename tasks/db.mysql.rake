require_relative "../src/initialize"

namespace :db do
  desc "Seed for project."
  task :seed do
    ruby "db/seeds.rb"
  end

  desc "Setup database."
  task :setup do
    ruby "db/schema.rb"
  end

  desc "Migrate database."
  task :migrate do
    ruby "db/schema_migrate.rb"
  end
end
