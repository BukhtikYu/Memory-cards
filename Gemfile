# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
gem 'rails-i18n'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'activeadmin'
gem 'devise'
gem 'omniauth'
gem 'omniauth-github'
gem 'omniauth-google-oauth2'
# Use Active Storage variant
# gem 'image_processing', '~> 1.2'
gem 'active_storage_validations'
gem 'aws-sdk-s3', require: false
gem 'rails-controller-testing'
gem 'redcarpet'
gem 'rouge'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false
gem 'lefthook'
gem 'rubocop', require: false
gem 'rubocop-rails', require: false
gem 'rubocop-rspec', require: false
gem 'recaptcha'

group :development, :test do
  # Cal 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara'
  gem 'capybara-screenshot'
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'shoulda'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false, group: :test
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '~> 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'acts_as_list', '~> 1.0'
