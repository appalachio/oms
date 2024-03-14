source "https://rubygems.org"

ruby file: ".ruby-version"

gem "rails", "~> 7.1.3", ">= 7.1.3.2"

# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "propshaft"

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
gem "redis", ">= 4.0.1"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"

# Use Simple Form to make creating forms easier
gem "simple_form"

# Use View Components to make views reusable and testable
gem "view_component"

# Use Paper Trail to track and store changes to models
gem "paper_trail"

# Use Validation Errors to track and store ActiveModel validation errors on models
gem "validation_errors"

# Use Friendly ID for slugging and permalinking models
gem "friendly_id"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ]

  # Use RSpec as the testing framework
  gem "rspec-rails", "~> 6.1.0"

  # Use Factory Bot to create test factories (fixtures)
  gem "factory_bot_rails"

  # Use Faker to generate fake data
  gem "faker"

  # Use Rubocop as a static code analyzer and to enforce a code style
  gem "rubocop", require: false
  # Rubocop Rails is used by Rubocop to add Rails specific checks
  gem "rubocop-rails", require: false
  # Rubocop RSpec is used by Rubocop to add RSpec specific checks
  gem "rubocop-rspec", require: false
  # Rubocop Factory Bot is used by Rubocop to add Factory Bot specific checks
  gem "rubocop-factory_bot", require: false
  # Rubocop Capbyara is used by Rubocop to add Capybara specific checks
  gem "rubocop-capybara", require: false
  # Rubocop Rake is used by Rubocop to add Rake specific checks
  gem "rubocop-rake", require: false
  # Rubocop Performance is used by Rubocop to add performance specific checks
  gem "rubocop-performance", require: false
  # Use the Rails Omakase Rubocop style as the default
  gem "rubocop-rails-omakase", require: false

  # Use ERB Lint as a static code analyzer for .erb files
  gem "erb_lint", require: false

  # Use Reek to detect code smells
  gem "reek"

  # Use Active Record Doctor to catch database issues
  gem "active_record_doctor"
  # Use Strong Migrations to catch unsafe database migrations
  gem "strong_migrations"
  # Use Database Consistency to ensure the datbase is up to date with model checks
  gem "database_consistency"
  # Use Isolator to detect non-atomic database transactions
  gem "isolator"

  # Use Brakeman as a static analysis security tool
  gem "brakeman"

  # Use Bundler Audit to check for insecure Gem versions
  gem "bundler-audit"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  gem "rack-mini-profiler"

  # Display better error messages and pages
  gem "better_errors"
  # Binding of Caller is used by Better Errors for some advanced features
  gem "binding_of_caller"

  # Open emails in the web browser during development
  gem "letter_opener"

  # Automatically add a comment with the database schema to the top of relevant classes as a comment
  gem "annotate"

  # Use Lookbook to preview ViewComponents in a UI
  gem "lookbook", ">= 2.2.2"
  # Listen is used by Lookbook to enable live previews without reloading
  gem "listen"

  # Use Overcommit to manage Git hooks
  gem "overcommit"
end

group :test do
  # Use Capybara to write feature tests
  gem "capybara"
  # Selenium Webdriver is used by Capybara as the headless browser
  gem "selenium-webdriver"

  # Use Capybara Screenshot to take a screenshot of failing feature tests
  gem "capybara-screenshot"

  # Use Superdiff to improve the diff between RSpec test objects
  gem "super_diff"

  # Use Fuubar as a RSpec loading bar
  gem "fuubar"

  # Use Shoulda Matchers to add many common one-line test matchers
  gem "shoulda-matchers"

  # Use Email Spec to add test matchers for email sending
  gem "email_spec"

  # Use SimpleCov to measure test code coverage
  gem "simplecov", require: false
end
