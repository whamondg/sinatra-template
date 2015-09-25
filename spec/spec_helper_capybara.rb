require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

RSpec.configure do |config|
  config.include Capybara::DSL
end



