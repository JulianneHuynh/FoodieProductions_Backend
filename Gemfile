source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.4", ">= 7.0.4.1"

# The original assest pipeline for Rails [https://github.com/rails/sprokets-rails]
# gem "sprokets-rails"

# Use postgresql as the database for Active Record
gem "pg"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Bundle and transpile JavaScript [http://github.com/rails/jbundling-rails]
gem "jsbundling-rails"

# Hotwire's SPA-like page accelerator [http://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest Javascript framework [http://stimulus.hotwired.dev]
gem "stimulus-rails"

# Bundle and process CSS [http://github.com/rails/cssbundling-rails]
gem "cssbundling-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
gem 'sassc', '~> 2.1.0'

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem "rack-cors"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "factory_bot_rails"
  # creates dummy data
  gem "faker", "~> 2.20"
  # gem "pry-rails"
  gem "rspec-rails"
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
  gem "web-console"
end

# fetch requests that uses the backend
gem 'rest-client'
# goes with 'rest-client' 
# allows parsing, allows turning request into our response, allows fetch request 
gem 'json'

gem "active_model_serializers", "~> 0.10.13"

# allows encoding & decoding data
gem "jwt"

#lets me see its dot Env -
#allows us to create an environment file that holds API keys encryption key b/c when we do our w/ jwt . We'll need a key word to let jwt know we decode data 
# to keep data secure
gem 'dotenv-rails'

# flexible user authentication used in Ruby on Rails-based applications
gem 'devise'

group :test do 
  gem "shoulda-matchers", "~> 5.0"
end

# gem "concurrent-ruby", "~> 1.2"