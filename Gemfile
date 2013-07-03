source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '4.0.0.rc1'

# Database
gem 'pg'
gem 'foreigner'

# Server
gem 'thin'

# Improvements
gem 'inherited_resources', github: 'josevalim/inherited_resources'
gem 'simple_form', '~> 3.0.0.rc'

# I18n
gem 'rails-i18n'
gem 'devise-i18n'

# Authentication
gem 'devise', '3.0.0.rc'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'rails-settings-cached'

# Frontend stuff
gem 'jquery-rails', '2.1'
gem 'slim-rails'
gem 'initjs'
gem 'rack-google-analytics'

gem 'sass-rails', '~> 4.0.0.rc1'
gem 'coffee-rails', '4.0.0'
gem 'uglifier'
#gem 'turbolinks'
gem 'bootstrap-sass'

group :production do
  gem 'execjs'
  gem 'therubyracer', platform: :ruby
end

group :development, :test do
  gem 'rspec-rails', '~> 2.14.0.rc1'
  gem 'shoulda-matchers'
  gem 'machinist'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'pry'
  gem 'awesome_print'
end

group :development do
  gem 'better_errors'
  gem 'rails-default-database'
end
