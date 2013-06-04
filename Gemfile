source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Database
gem 'pg'
gem 'foreigner'

# Server
gem 'thin'

# Improvements
gem 'inherited_resources'
gem 'simple_form'

# I18n
gem 'rails-i18n'
gem 'devise-i18n'

# Authentication
gem 'devise', '~> 2.1.2'
gem 'omniauth', '~> 1.1.1'
gem 'omniauth-facebook', '~> 1.4.1'
gem 'omniauth-twitter', '~> 0.0.14'
gem "rails-settings-cached", "0.2.4"

# Frontend stuff
gem 'jquery-rails'
gem 'slim-rails'
gem 'initjs'
gem 'rack-google-analytics'

gem 'factory_girl_rails'

group :assets do
  gem 'sass-rails',   '~> 3.2.6'
  gem 'coffee-rails', '~> 3.2.2'
  gem 'compass-rails', '~> 1.0.3'
  gem 'uglifier', '>= 1.0.3'
  #gem 'turbolinks'
  gem 'bootstrap-sass', '~> 2.3.0.1'
end

group :production do
  gem 'execjs'
  gem 'therubyracer', platform: :ruby
end

group :development, :test do
  gem 'rspec-rails', '~> 2.12.0'
  gem 'shoulda-matchers', '~> 1.4.1'
  gem 'machinist', '~> 2.0'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'pry'
  gem 'awesome_print'
end

group :development do
  gem 'better_errors'
  gem 'rails-default-database'
end
