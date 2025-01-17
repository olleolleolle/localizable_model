# encoding: utf-8

require File.expand_path("../boot", __FILE__)

# Pick the frameworks you want:
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)
require "localizable_model"

module Internal
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those
    # specified here.  Application configuration should go into files
    # in config/initializers -- all .rb files in that directory are
    # automatically loaded.

    # Set Time.zone default to the specified zone and make Active
    # Record auto-convert to this zone.  Run "rake -D time" for a list
    # of tasks for finding time zone names. Default is UTC.
    config.time_zone = "Copenhagen"

    # The default locale is :en and all translations from
    # config/locales/*.rb,yml are auto loaded.

    # config.i18n.load_path += Dir[
    #   Rails.root.join('my', 'locales', '*.{rb,yml}').to_s
    # ]
    config.i18n.default_locale = :en

    config.i18n.available_locales = [:nb, :en]
  end
end
