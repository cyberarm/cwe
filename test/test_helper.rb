ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/rails'

module ActionController
  class IntegrationTest
    include Capybara::DSL
  end
end
