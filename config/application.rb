require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module GeoPhoto
  
  class Application < Rails::Application

   
  
   # print "S3_BUCKET"
#    print ENV[‘S3_BUCKET’]
    
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
   # config.paperclip_defaults = { :storage => :s3, :s3_credentials => { :bucket => ENV[‘S3_BUCKET’], :access_key_id => ENV[‘S3_KEY’], :secret_access_key => ENV[‘S3_SECRET’] }}
  
  #  config.paperclip_defaults = {
  #    :storage => :s3,
  #    :url => ":s3_domain_url",
  #    :path => ":class/:id.:style.:extension",
  #    :s3_credentials => {
  #      :bucket => ENV['S3_BUCKET'],
  #      :access_key_id => ENV['S3_KEY'],
  #      :secret_access_key => ENV['S3_SECRET'],
  #      :s3_host_name => 's3.amazonaws.com'
  #    }
  #  }
  end
end
