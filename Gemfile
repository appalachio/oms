source "https://rubygems.org"

ruby file: ".ruby-version"

gem "rails", "~> 8.0.2"
# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "propshaft", "~> 1.1"
# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"
# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem "jsbundling-rails", "~> 1.3"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails", "~> 2.0"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails", "~> 1.3"
# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem "cssbundling-rails", "~> 1.4"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder", "~> 2.13"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", "~> 1.2025", platforms: %i[ windows jruby ]

# Use the database-backed adapters for Rails.cache, Active Job, and Action Cable
gem "solid_cache", "~> 1.0"
gem "solid_queue", "~> 1.1"
gem "solid_cable", "~> 3.0"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", "~> 1.18", require: false

# Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
gem "kamal", "~> 2.5", require: false

# Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem "thruster", "~> 0.1", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.14"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", "~> 1.10", platforms: %i[ mri windows ], require: "debug/prelude"

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", "~> 7.0", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", "~> 1.1", require: false
  # Rubocop Rake is used by Rubocop to add Rake specific checks
  gem "rubocop-rake", "~> 0.7", require: false
  # Rubocop RSpec is used by Rubocop to add RSpec specific checks
  gem "rubocop-rspec", "~> 3.5", require: false
  # Rubocop RSpec Rails is used by Rubocop to add Rails RSpec specific checks
  gem "rubocop-rspec_rails", "~> 2.31", require: false
  # Rubocop Factory Bot is used by Rubocop to add Factory Bot specific checks
  gem "rubocop-factory_bot", "~> 2.27", require: false
  # Rubocop Capbyara is used by Rubocop to add Capybara specific checks
  gem "rubocop-capybara", "~> 2.22", require: false

  # Use ERB Lint as a static code analyzer and linter for .erb files
  gem "erb_lint", "~> 0.9", require: false

  # Use Bundler Audit to check for insecure versions of gems
  gem "bundler-audit", "~> 0.9"

  # Use RSpec Rails as the testing framework
  gem "rspec-rails", "~> 7.1"

  # Use Factory Bot for test fixtures
  gem "factory_bot_rails", "~> 6.4"
  # Use Faker to create pseduofake test data
  gem "faker", "~> 3.5"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console", "~> 4.2"

  # Use Foreman to run necessary servers for development
  gem "foreman", "~> 0.88"

  # Add speed badges to the top of pages [https://github.com/MiniProfiler/rack-mini-profiler]
  gem "rack-mini-profiler", "~> 3.3"
  # Memory Profiler is used by Rack Mini Profiler for memory profiling
  gem "memory_profiler", "~> 1.1"
  # Stackprof is used by Rack Mini Profiler for call stack profiling
  gem "stackprof", "~> 0.2"

  # Use Letter Opener to open emails sent in development in a new tab of the browser
  gem "letter_opener", "~> 1.10"
  # Use Letter Opener Web to view all sent emails in the web browser
  gem "letter_opener_web", "~> 3.0"

  # Use AnnotateRB to automatically add a comment with the database schema at the top of relevant files
  gem "annotaterb", "~> 4.14"
end

group :test do
  # Use Capybara for simulating user interactions with a browser in tests
  gem "capybara", "~> 3.40"
  # Selenium Webdriver is used by Capybara as the headless browser
  gem "selenium-webdriver", "~> 4.29"

  # Use Capybara Screenshot to take a screenshot of each failing GUI test
  gem "capybara-screenshot", "~> 1.0"

  # Use Superdiff to improve the diff between RSpec test objects
  gem "super_diff", "~> 0.15"

  # Use Fuubar as a RSpec progress bar
  gem "fuubar", "~> 2.5"

  # Use Shoulda Matchers to add many common, one line test matchers
  gem "shoulda-matchers", "~> 6.4"

  # Use SimpleCov to measure test code coverage
  gem "simplecov", "~> 0.22", require: false
end
