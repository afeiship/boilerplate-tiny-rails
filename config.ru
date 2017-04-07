# 引入 bundler
require 'bundler'

# 使用 Bundler 加载 Gemfile 中添加的所有 gem
Bundler.require

# 引入文件 lib/brain_rack.rb
require File.join(File.dirname(__FILE__),'lib', 'brain_rack')

# 引入文件 lib/request_controller.rb
require File.join(File.dirname(__FILE__),'lib', 'request_controller')

# 引入文件 config/routes.rb （暂未创建）
require File.join(File.dirname(__FILE__),'config', 'routes')

# 实例化 BrainRack 对象
BrainRackApplication = BrainRack.new

# 使用 Rack 运行应用程序
run RequestController.new