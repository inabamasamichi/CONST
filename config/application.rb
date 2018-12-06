require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Const
  class Application < Rails::Application

    config.load_defaults 5.2
    config.i18n.default_locale = :en
    #config.assets.initialize_on_precompile = false


    # Initialize configuration defaults for originally generated Rails version.

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    #the framework and any gems in your application.
    config.autoload_paths += Dir[Rails.root.join('app', 'uploaders')]
    require 'carrierwave'
    require 'carrierwave/orm/activerecord'
  end
end
