source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'

# #1
group :development do
  gem 'rubocop', require: false
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

# #2
group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails', '~> 3.4'
  gem 'shoulda'

  gem 'pry'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

gem 'bootstrap-sass', '~> 3.3.6'

gem 'figaro', '1.0'

gem 'devise'

gem 'faker'

gem 'factory_girl_rails'
