require File.expand_path('../boot', __FILE__)

require 'rails/all'




# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Pinterest
  class Application < Rails::Application

     client = Twitter::REST::Client.new do |config|
            config.consumer_key        = "I9ikHMfYPqkGK8fkglKNACfNU"
           config.consumer_secret     = "pQQ7rCkMin7GvQdsaFvPtahthIjdiUwQpIkx5miZmh0wJU1Uzz"
           config.access_token        = "445571280-j2m2vwaOb4mDb1qBXUvmT6oqlh0Topiixh6vfX3u"
          config.access_token_secret = "9w5GsOzAitaDl13KGFFFvu7oLmT1xQpJpEAALFzDWdmbG" 
      end
      
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
  end
end
