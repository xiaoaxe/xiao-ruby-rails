require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module XiaoRubyRails
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end

  XiaoRubyRails::Application.configure do
  config.time_zone='Beijing'
  config.active_record.default_timezone=:local
  config.active_record.time_zone_aware_attributes=false
end

end
