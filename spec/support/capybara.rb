require "capybara/rails"
require "capybara/rspec"

Capybara.server = :puma
Capybara.default_driver = :selenium
Capybara.asset_host = "http://localhost:3000"
