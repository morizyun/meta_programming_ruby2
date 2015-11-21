require 'monetize'

# i18n のおまじない
I18n.config.available_locales = [:ja, :en]
I18n.config.default_locale = :en

standard_price = 100.to_money('USD')
puts standard_price.format
