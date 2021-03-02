#!/usr/bin/env ruby

# Instead of loading all of Rails, load the
# particular Rails dependencies we need

require_relative "./initialize"

class App
  def start
    # SpiderPage.start
    records = Page.where(grabbed: false)
    size = records.size / 50
    threads = records.each_slice(size).map do |items|
      Thread.new do
        items.each do |item|
          puts "url: #{item.url}"
          SpiderUrl.start(item.url)
          item.update(grabbed: true)
        end
      end
    end

    threads.each(&:join)
  end
end

app = App.new
app.start
