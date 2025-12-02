source "https://rubygems.org"

gem "rails", "~> 8.1.1"
# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "propshaft", "~> 1.3.1"
# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"
# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails", "~> 2.2.2"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails", "~> 2.0.20"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails", "~> 1.3.4"
# Use Tailwind CSS [https://github.com/rails/tailwindcss-rails]
gem "tailwindcss-rails", "~> 4.4.0"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder", "~> 2.14.1"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", "~> 1.2025.2", platforms: %i[ windows jruby ]

# Use the database-backed adapters for Rails.cache, Active Job, and Action Cable
gem "solid_cache", "~> 1.0.10"
gem "solid_queue", "~> 1.2.4"
gem "solid_cable", "~> 3.0.12"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", "~> 1.19.0", require: false

# Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
gem "kamal", "~> 2.9.0", require: false

# Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem "thruster", "~> 0.1.16", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", "~> 1.11.0", platforms: %i[ mri windows ], require: "debug/prelude"

  # Audits gems for known security defects (use config/bundler-audit.yml to ignore issues)
  gem "bundler-audit", "~> 0.9.3", require: false

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", "~> 7.1.1", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", "~> 1.1.0", require: false

  # HTML and erb styling
  gem "erb_lint", "~> 0.9.0", require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console", "~> 4.2.1"

  # Adds a speed badge to every page for profiling
  gem "rack-mini-profiler", "~> 4.0.1"
  # Adds memory profiling to Rack Mini Profiler
  gem "memory_profiler", "~> 1.1.0"
  # Adds call stack profiling to Rack Mini Profiler
  gem "stackprof", "~> 0.2.27"

  # Send emails to a new tab of the developers default web browser
  gem "letter_opener", "~> 1.10.0"

  # Adds a comment with the database schema to the top of relevant Rails classes
  gem "annotaterb", "~> 4.20.0"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara", "~> 3.40.0"
  gem "selenium-webdriver", "~> 4.38.0"
end
