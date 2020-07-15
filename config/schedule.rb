# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
APP_PATH = File.expand_path("../../", __FILE__)
LOG_DIR = "#{APP_PATH}/log"

set :output, "#{LOG_DIR}/cron.log"

# every 2.days do
#   command "cd #{PROJECT_PATH} && ruby src/app.rb"
# end
