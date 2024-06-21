# frozen_string_literal: true

source 'https://rubygems.org'

ruby file: '.ruby-version'

# Needed until Ruby 3.3.4 is released https://github.com/ruby/ruby/pull/11006
gem 'net-pop', github: 'ruby/net-pop'

gem 'rails', '~> 7.1.3', '>= 7.1.3.3'

# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem 'propshaft'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '>= 5.0'

# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem 'jsbundling-rails'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem 'cssbundling-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use Redis adapter to run Action Cable in production and as a cache
gem 'redis', '>= 4.0.1'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[windows jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem 'image_processing', '~> 1.2'

# Use Query Count to log the number of database queries in log files
gem 'query_count'

# Use Solid Queue for Active Job background jobs
gem 'solid_queue'
# Use Mission Control Jobs as a frontend for Active Job
gem 'mission_control-jobs'

# Use Paper Trail to track and store changes to models
gem 'paper_trail'
# Paper Trail Association Tracking is used by Paper Trail to also track associations
gem 'paper_trail-association_tracking'

# Use Validation Errors to store validation errors made on models by users
gem 'validation_errors'

# Use FriendlyID to customize URL slugs for models
gem 'friendly_id'

# Use Kaminari for pagination in views
gem 'kaminari'

# Use Local Time to display datetimes in the user's local timezone
gem 'local_time'

# Use Simple Form to make creating forms easier
gem 'simple_form'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri windows]

  # Use Rubocop as a static code analyzer and linter
  gem 'rubocop', require: false
  # Rubocop Rails is used by Rubocop to add Rails specific checks
  gem 'rubocop-rails', require: false
  # Rubocop Performance is used by Rubocop to add performance specific checks
  gem 'rubocop-performance', require: false
  # Rubocop Rake is used by Rubocop to add Rake specific checks
  gem 'rubocop-rake', require: false
  # Rubocop RSpec is used by Rubocop to add RSpec specific checks
  gem 'rubocop-rspec', require: false
  gem 'rubocop-rspec_rails', require: false
  # Rubocop Factory Bot is used by Rubocop to add Factory Bot specific checks
  gem 'rubocop-factory_bot', require: false
  # Rubocop Capbyara is used by Rubocop to add Capybara specific checks
  gem 'rubocop-capybara', require: false

  # Use ERB Lint as a static code analyzer and linter for .erb files
  gem 'erb_lint', require: false

  # Use Brakeman as a static code analyzer for security vulnerabilities
  gem 'brakeman'
  # Use Bundler Audit to check for insecure versions of gems
  gem 'bundler-audit'

  # Use Isolator to detect nonatomic database transactions
  gem 'isolator'
  # Use Active Record Doctor to detect common database issues
  gem 'active_record_doctor'
  # Use Database Consistency to detect differences between database migrations and associated models
  gem 'database_consistency'
  # Use Strong Migrations to catch common, unsafe database migrations
  gem 'strong_migrations'

  # Use RSpec Rails as the testing framework
  gem 'rspec-rails'

  # Use Factory Bot for test fixtures
  gem 'factory_bot_rails'
  # Use Faker to create pseduofake test data
  gem 'faker'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  gem 'rack-mini-profiler'
  # Memory Profiler is used by Rack Mini Profiler for memory profiling
  gem 'memory_profiler'
  # Stackprof is used by Rack Mini Profiler for call stack profiling
  gem 'stackprof'

  # Use Foreman to run Procfile.dev with bin/dev
  gem 'foreman'

  # Use Better Errors for improved error pages
  gem 'better_errors'
  # Binding of Caller is used by Better Errors for optional, advanced features
  gem 'binding_of_caller'

  # Use Letter Opener to open emails sent in development in a new tab of the browser
  gem 'letter_opener'
  # Use Letter Opener Web to view all sent emails in the web browser
  gem 'letter_opener_web'

  # Use Annotate to automatically add a comment with the database schema at the top of relevant files
  gem 'annotate'

  # Use Overcommit to manage Git hooks
  gem 'overcommit'
end

group :test do
  # Use Capybara for simulating user interactions with a browser in tests
  gem 'capybara'
  # Selenium Webdriver is used by Capybara as the headless browser
  gem 'selenium-webdriver'

  # Use Capybara Screenshot to take a screenshot of each failing GUI test
  gem 'capybara-screenshot'

  # Use Superdiff to improve the diff between RSpec test objects
  gem 'super_diff'

  # Use Fuubar as a RSpec progress bar
  gem 'fuubar'

  # Use Shoulda Matchers to add many common, one line test matchers
  gem 'shoulda-matchers'

  # Use SimpleCov to measure test code coverage
  gem 'simplecov', require: false
end
