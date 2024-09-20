source 'https://rubygems.org'
ruby "3.3.5"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5.1'
# Use sqlite3 as the database for Active Record
group :development, :test do
	gem 'sqlite3'
end
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# authorization
gem 'cancancan', '~> 1.10'

# pagination
gem 'will_paginate', '~> 3.1.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'guard'

  gem 'guard-rspec', require: false

  gem 'spork-rails'

  gem 'guard-spork'

end

group :production do
	gem 'rails_12factor'
	gem 'pg'
end

group :development, :test do
	gem 'rspec-rails', '~>3.4'
  gem 'factory_girl_rails', '~> 4.0'
end

gem 'devise'

gem 'listen', '3.1.1'

gem 'stripe'

group :development do 
  gem 'brakeman', :require => false 
end

# Brakeman
#gem cert --add <(curl -Ls https://raw.github.com/presidentbeef/brakeman/master/brakeman-public_cert.pem)

# ruby_parser, etc.
#gem cert --add <(curl -Ls http://www.zenspider.com/~ryan/gem-public_cert.pem)

# multijson
#gem cert --add <(curl -Ls https://raw.githubusercontent.com/intridea/multi_json/master/certs/rwz.pem)

#AngularJS
gem 'angularjs-rails'

#Redis
gem 'redis-rails'
