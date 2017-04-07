#!/usr/bin/env ruby
require 'rack'
require File.join(File.dirname(__FILE__), '..', 'router.rb')

class BrainRack
  attr_reader :router

  def initialize
    @router = Router.new
  end
end



load 'request_controller.rb' # 引入 request_controller.rb 文件

Rack::Handler::WEBrick.run(
  RequestController.new,     # 实例化 RequestController 类
  Port: 9000                 # 监听 9000 端口
)