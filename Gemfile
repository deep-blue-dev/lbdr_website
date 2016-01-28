source 'https://rubygems.org'

ruby '2.3.0'

### Libraries
gem 'aws-sdk', '< 2.0'
gem 'devise', :git => 'https://github.com/plataformatec/devise.git'
gem "figaro"
gem "paperclip"
gem 'puma' # Use Puma as the app server
gem 'rails', '>= 5.0.0.beta1', '< 5.1'
gem "sinatra", :git => 'https://github.com/sinatra/sinatra.git'

### Assets

gem 'bootstrap-sass' # Pull yourself up by your
gem 'slim-rails' # Lose some weight
gem 'sass-rails' # Use SCSS for stylesheets
gem 'coffee-rails' # CoffeeScript
gem 'jquery-rails' # jQuery
gem 'jbuilder', '~> 2.0'
gem 'turbolinks'

group :development do
  gem 'sqlite3'
  gem 'better_errors' # Debuggers
  gem 'binding_of_caller'
  gem 'awesome_print'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'quiet_assets' # Shhh.. we don't need to see the assets
  gem 'spring' # Makes the app springy
end

group :production do
  gem 'pg'

  ### Dependencies
  gem 'therubyracer',  platforms: :ruby

  ### Assets
  gem 'rails_12factor' # Heroku Asset/Permissions Handler
  gem 'uglifier' # JS-Min
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
