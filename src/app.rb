#!/usr/bin/env ruby

# Instead of loading all of Rails, load the
# particular Rails dependencies we need

require_relative "./initialize"

class App
  def start
    puts "hello tiny rails!"
  end
end

app = App.new
app.start
