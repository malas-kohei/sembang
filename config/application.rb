require_relative 'boot'

require 'rails/all'


Bundler.require(*Rails.groups)

module Berborak
  class Application < Rails::Application
  
  config.load_defaults 5.1
  config.i18n.default_locale = :ja
  config.assets.initialize_on_precompile = false
  config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: false,
        request_specs: false
      g.fixture_replacement :factory_bot, dir: "spec/factories"
    end
  end
end
