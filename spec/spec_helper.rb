PADRINO_ENV = 'test' unless defined?(PADRINO_ENV)
require File.expand_path(File.dirname(__FILE__) + "/../config/boot")

RSpec.configure do |conf|
  conf.mock_with :mocha
  conf.include Rack::Test::Methods
end

# You can use this method to custom specify a Rack app
# you want rack-test to invoke:
#
#   app Rakuen4otaku::Main
#   app Rakuen4otaku::Main.tap { |a| }
#   app(Rakuen4otaku::Main) do
#     set :foo, :bar
#   end
#
def app(app = nil &blk)
  @app ||= block_given? ? app.instance_eval(&blk) : app
  @app ||= Padrino.application
end
