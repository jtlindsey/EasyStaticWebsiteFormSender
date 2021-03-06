source 'https://rubygems.org'

# rails form builder that makes it super easy to integrate twitter bootstrap-style forms
gem 'bootstrap_form'

# Authentication
gem 'devise'

# Abort requests that are taking too long; an exception is raised.
gem "rack-timeout"

# Production web server
# Check for thread safety after making changes or adding gems. Use:
# heroku config:set MIN_THREADS=1 RAILS_MAX_THREADS=1, and scale up after logs confirm no issues
# https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server
gem 'puma'

# allows web applications to make cross domain AJAX calls without using workarounds such as JSONP
gem 'rack-cors', :require => 'rack/cors'

# Shim to load environment variables from .env into ENV in development.
gem 'dotenv-rails', :groups => [:development, :test]

gem 'bootstrap-sass', '~> 3.3.5'
source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.1.0'
end
#for font-awesome icons
gem 'font-awesome-rails'

gem 'rails', '4.2.6'
ruby "2.3.0"

# Use postgresql as the database for Active Record
gem 'pg', '~> 0.15'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

#heroku dependency
gem 'rails_12factor', group: :production

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Access an IRB console on exception pages or by using <%= console %> in views
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  gem 'minitest-reporters', '1.0.5'
  gem 'mini_backtrace',     '0.1.3'
  gem 'guard-minitest',     '2.3.1'
end