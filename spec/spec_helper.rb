ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)

require 'rspec/rails'
require 'capybara/rspec'
# require 'capybara-screenshot-diff/rspec'
require 'selenium-webdriver'
require 'capybara/poltergeist'
require 'pry-rails'


# Capybara.default_driver = :selenium
Capybara.javascript_driver = :poltergeist
# Capybara.default_max_wait_time = 50