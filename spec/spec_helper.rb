ENV['RACK_ENV'] = 'test'
require 'bundler'
Bundler.require :default, :test

RSpec.configure do |config|

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true # Prevent mocking/stubbing a method that does not exist on a real object
  end

  config.order = :random

  Kernel.srand config.seed
end
