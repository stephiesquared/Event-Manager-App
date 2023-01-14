require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Group1Fall2022

  #Rails application for CS4300 FA2022, An application for users to see events happening in their area in Colorado. Users can enter their location and see a list of events as well as a calendar view of when those events are happening. Organizations can add their own events for users to attend, and users can filter the types of events they would like to see.

  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    config.assets.enabled = true
    config.assets.paths << Rails.root.join("app", "assets", "javascripts")
  end
end
