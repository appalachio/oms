require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
# require "action_mailbox/engine" Reenable once action mailbox is used.
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Oms
  # Configuration for the application, engines, and railties goes here.
  #
  # These settings can be overridden in specific environments using the files
  # in config/environments, which are processed later.
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: ["assets", "tasks"])

    # config.eager_load_paths << Rails.root.join("extras")

    # Don't generate system test files.
    config.generators.system_tests = nil

    # Set the timezone to UTC
    config.time_zone = "UTC"
    config.active_record.default_timezone = :utc

    # Always eager load to prevent N+1 queries
    config.active_record.strict_loading_by_default = true

    # Enable ActiveSupport notifications for all ViewComponents
    config.view_component.instrumentation_enabled = true
    config.view_component.use_deprecated_instrumentation_name = false
  end
end
