source "https://rubygems.org"

ruby file: ".ruby-version"

gem "rails", "~> 7.1.3", ">= 7.1.3.4"

# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "propshaft", "~> 0.9"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 6.4", ">= 5.0"

# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem "jsbundling-rails", "~> 1.3"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails", "~> 2.0"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails", "~> 1.3"

# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem "cssbundling-rails", "~> 1.4"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder", "~> 2.12"

# Use Redis adapter to run Action Cable in production
gem "redis", "~> 5.2", ">= 4.0.1"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", "~> 1.2024", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", "~> 1.18", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", "~> 1.9", platforms: %i[ mri windows ]

  # Use Rubocop as a static code analyzer and linter
  gem 'rubocop', '~> 1.65', require: false
  # Rubocop Rails is used by Rubocop to add Rails specific checks
  gem 'rubocop-rails', '~> 2.25', require: false
  # Rubocop Performance is used by Rubocop to add performance specific checks
  gem 'rubocop-performance', '~> 1.21', require: false
  # Rubocop Rake is used by Rubocop to add Rake specific checks
  gem 'rubocop-rake', '~> 0.6', require: false
  # Rubocop RSpec is used by Rubocop to add RSpec specific checks
  gem 'rubocop-rspec', '~> 3.0', require: false
  # Rubocop RSpec Rails is used by Rubocop to add Rails RSpec specific checks
  gem 'rubocop-rspec_rails', '~> 2.30', require: false
  # Rubocop Factory Bot is used by Rubocop to add Factory Bot specific checks
  gem 'rubocop-factory_bot', '~> 2.26', require: false
  # Rubocop Capbyara is used by Rubocop to add Capybara specific checks
  gem 'rubocop-capybara', '~> 2.21', require: false

  # Use ERB Lint as a static code analyzer and linter for .erb files
  gem 'erb_lint', '~> 0.6', require: false

  # Use Brakeman as a static code analyzer for security vulnerabilities
  gem 'brakeman', '~> 6.1'
  # Use Bundler Audit to check for insecure versions of gems
  gem 'bundler-audit', '~> 0.9'

  # Use Isolator to detect nonatomic database transactions
  gem 'isolator', '~> 1.0'
  # Use Active Record Doctor to detect common database issues
  gem 'active_record_doctor', '~> 1.14'
  # Use Database Consistency to detect differences between database migrations and associated models
  gem 'database_consistency', '~> 1.7'
  # Use Strong Migrations to catch common, unsafe database migrations
  gem 'strong_migrations', '~> 2.0'

  # Use RSpec Rails as the testing framework
  gem 'rspec-rails', '~> 6.1'

  # Use Factory Bot for test fixtures
  gem 'factory_bot_rails', '~> 6.4'
  # Use Faker to create pseduofake test data
  gem 'faker', '~> 3.4'
end

group :development do
  # Use Foreman to run all development processes in Procfile.dev with the bin/dev script
  gem "foreman", "~> 0.88"

  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console", "~> 4.2"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  gem "rack-mini-profiler", "~> 3.3"
  # Memory Profiler is used by Rack Mini Profiler for memory profiling
  gem "memory_profiler", "~> 1.0"
  # Stackprof is used by Rack Mini Profiler for call stack profiling
  gem "stackprof", "~> 0.2"

  # Use Better Errors for improved error pages
  gem "better_errors", "~> 2.10"
  # Binding of Caller is used by Better Errors for optional, advanced features
  gem "binding_of_caller", "~> 1.0"

  # Use Letter Opener to open emails sent in development in a new tab of the browser
  gem "letter_opener", "~> 1.10"
  # Use Letter Opener Web to view all sent emails in the web browser
  gem "letter_opener_web", "~> 3.0"

  # Use Annotate to automatically add a comment with the database schema at the top of relevant files
  gem "annotate", "~> 3.2"

  # Use Overcommit to manage Git hooks
  gem 'overcommit', '~> 0.64'
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
