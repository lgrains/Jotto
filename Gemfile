source 'http://rubygems.org'

gem 'rails', '3.2.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'
gem 'haml'
gem 'haml-rails'
gem 'simple_form'
gem 'pony'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails', "3.2.2"
  gem 'uglifier', "1.2.3"
  gem 'compass-rails','~> 1.0.0.rc.2'
  gem 'compass-colors'
  gem 'sassy-buttons'
  gem 'sass-rails','~> 3.2.4'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'



group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end

group :test, :development do
  # To use debugger
  gem 'ruby-debug19', :require => 'ruby-debug'
  
  gem 'database_cleaner'
  gem 'rails3-generators'
  gem 'factory_girl_rails'
  gem 'cucumber-rails'
  gem 'capybara'
  gem 'webrat'
  gem 'rspec-rails'
end
