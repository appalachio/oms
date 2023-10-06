source "https://rubygems.org"

ruby "3.2.2"

gem "rails", "~> 7.1.0"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem "cssbundling-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ]

  # Use RSpec as the testing framework
  gem "rspec-rails"
  # Fuubar is an instafailing progress bar for RSpec
  gem "fuubar"
  # Use Factory Bot as the test fixtures framework
  gem "factory_bot_rails"
  # Use Faker to generate fake test data
  gem "faker"
  # Capybara is used to write system tests
  gem "capybara"
  # Selenium Webdrivers is used by Capybara to load web drivers and keep them up to date
  gem "selenium-webdriver"
  # Axe core is used to test for a18n
  gem "axe-core-rspec"
  gem "axe-core-capybara"
  # Shoulda Matchers adds many common, one-line RSpec test matchers
  gem "shoulda-matchers"
  # SimpleCov records test code coverage
  gem "simplecov", require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Display more information on error pages
  gem "better_errors"
  # Required by Better Errors to use advanced features
  gem "binding_of_caller"

  # Automatically add comments summarizing the moel schema or routes in relevant files
  gem "annotaterb"
end

