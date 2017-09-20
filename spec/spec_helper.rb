ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)

require 'rspec/rails'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'capybara/poltergeist'
require 'pry-rails'


Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome, args: ["--disable-infobars"])
end

Capybara.configure do |config|
	config.default_driver = :selenium
	config.default_max_wait_time = 20
end

Capybara.javascript_driver = :chrome

RSpec.configure do |config|
	config.before(:each, type: :feature) do
		Capybara.current_session.driver.browser.manage.window.resize_to(2_500, 2_500)
	end
end
