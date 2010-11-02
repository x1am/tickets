# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Encoding.default_external = "UTF-8"
Tickets::Application.initialize!
I18n.default_locale = :ru
Russian::init_i18n
Time.zone = "Moscow"

