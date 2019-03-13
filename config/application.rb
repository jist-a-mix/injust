require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Injust
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

ActionMailer::Base.smtp_settings = {

	:address		=> 'smtp.gmail.com',
	:domain		=> 'mail.google.com',
	:port		=> 587,
	:user_name		=> ENV["EMAIL_USERNAME"],
	:password		=> ENV["EMAIL_PASSWORD"],
	:authentication => 'login',
	:enable_starttls_auto => true
}
config.i18n.available_locales = %w(en fr)
config.assets.initialize_on_precompile = false
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
