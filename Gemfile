source 'https://rubygems.org'

# Environment variables.
gem 'dotenv-rails', :groups => [:development, :test]
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Database
gem 'mongoid'
gem 'bson_ext'

# Template engine
gem 'slim-rails'
# Styling framework
gem 'foundation-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem "mini_magick"
gem "refile", require: ["refile/rails", "refile/image_processing"]
gem "refile-mongoid", "~> 0.0.2",  git: "https://github.com/DimaSamodurov/refile-mongoid.git"

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '>= 1.3.2'
  # Pry helps you debug application.
  gem 'pry-rails'
  gem 'pry-byebug'
  # FactoryGirl helps you build models with convenient defaults
  gem 'factory_girl_rails'
  # Faker gives you data for testing
  gem 'faker'
end

group :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'database_cleaner', :require => false
  gem 'turnip'
end

#for login & users
gem 'devise'
gem 'omniauth-facebook'
gem 'fb_graph2'